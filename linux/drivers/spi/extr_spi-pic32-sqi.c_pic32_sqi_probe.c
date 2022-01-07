
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int of_node; } ;
struct spi_master {int num_chipselect; int dma_alignment; int mode_bits; TYPE_1__ dev; int unprepare_transfer_hardware; int prepare_transfer_hardware; int transfer_one_message; int bits_per_word_mask; int can_dma; int flags; int max_dma_len; int max_speed_hz; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pic32_sqi {int irq; void* sys_clk; void* base_clk; int xfer_done; void* regs; struct spi_master* master; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (void*) ;
 int PESQI_BD_BUF_LEN_MAX ;
 int PTR_ERR (void*) ;
 int SPI_BPW_RANGE_MASK (int,int) ;
 int SPI_MASTER_HALF_DUPLEX ;
 int SPI_MODE_0 ;
 int SPI_MODE_3 ;
 int SPI_RX_DUAL ;
 int SPI_RX_QUAD ;
 int SPI_TX_DUAL ;
 int SPI_TX_QUAD ;
 int clk_disable_unprepare (void*) ;
 int clk_get_rate (void*) ;
 int clk_prepare_enable (void*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_name (TYPE_1__*) ;
 void* devm_clk_get (TYPE_1__*,char*) ;
 void* devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_spi_register_master (TYPE_1__*,struct spi_master*) ;
 int free_irq (int,struct pic32_sqi*) ;
 int init_completion (int *) ;
 int pic32_sqi_can_dma ;
 int pic32_sqi_hw_init (struct pic32_sqi*) ;
 int pic32_sqi_isr ;
 int pic32_sqi_one_message ;
 int pic32_sqi_prepare_hardware ;
 int pic32_sqi_unprepare_hardware ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct pic32_sqi*) ;
 int request_irq (int,int ,int ,int ,struct pic32_sqi*) ;
 int ring_desc_ring_alloc (struct pic32_sqi*) ;
 int ring_desc_ring_free (struct pic32_sqi*) ;
 struct spi_master* spi_alloc_master (TYPE_1__*,int) ;
 struct pic32_sqi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;

__attribute__((used)) static int pic32_sqi_probe(struct platform_device *pdev)
{
 struct spi_master *master;
 struct pic32_sqi *sqi;
 int ret;

 master = spi_alloc_master(&pdev->dev, sizeof(*sqi));
 if (!master)
  return -ENOMEM;

 sqi = spi_master_get_devdata(master);
 sqi->master = master;

 sqi->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(sqi->regs)) {
  ret = PTR_ERR(sqi->regs);
  goto err_free_master;
 }


 sqi->irq = platform_get_irq(pdev, 0);
 if (sqi->irq < 0) {
  ret = sqi->irq;
  goto err_free_master;
 }


 sqi->sys_clk = devm_clk_get(&pdev->dev, "reg_ck");
 if (IS_ERR(sqi->sys_clk)) {
  ret = PTR_ERR(sqi->sys_clk);
  dev_err(&pdev->dev, "no sys_clk ?\n");
  goto err_free_master;
 }

 sqi->base_clk = devm_clk_get(&pdev->dev, "spi_ck");
 if (IS_ERR(sqi->base_clk)) {
  ret = PTR_ERR(sqi->base_clk);
  dev_err(&pdev->dev, "no base clk ?\n");
  goto err_free_master;
 }

 ret = clk_prepare_enable(sqi->sys_clk);
 if (ret) {
  dev_err(&pdev->dev, "sys clk enable failed\n");
  goto err_free_master;
 }

 ret = clk_prepare_enable(sqi->base_clk);
 if (ret) {
  dev_err(&pdev->dev, "base clk enable failed\n");
  clk_disable_unprepare(sqi->sys_clk);
  goto err_free_master;
 }

 init_completion(&sqi->xfer_done);


 pic32_sqi_hw_init(sqi);


 ret = ring_desc_ring_alloc(sqi);
 if (ret) {
  dev_err(&pdev->dev, "ring alloc failed\n");
  goto err_disable_clk;
 }


 ret = request_irq(sqi->irq, pic32_sqi_isr, 0,
     dev_name(&pdev->dev), sqi);
 if (ret < 0) {
  dev_err(&pdev->dev, "request_irq(%d), failed\n", sqi->irq);
  goto err_free_ring;
 }


 master->num_chipselect = 2;
 master->max_speed_hz = clk_get_rate(sqi->base_clk);
 master->dma_alignment = 32;
 master->max_dma_len = PESQI_BD_BUF_LEN_MAX;
 master->dev.of_node = pdev->dev.of_node;
 master->mode_bits = SPI_MODE_3 | SPI_MODE_0 | SPI_TX_DUAL |
      SPI_RX_DUAL | SPI_TX_QUAD | SPI_RX_QUAD;
 master->flags = SPI_MASTER_HALF_DUPLEX;
 master->can_dma = pic32_sqi_can_dma;
 master->bits_per_word_mask = SPI_BPW_RANGE_MASK(8, 32);
 master->transfer_one_message = pic32_sqi_one_message;
 master->prepare_transfer_hardware = pic32_sqi_prepare_hardware;
 master->unprepare_transfer_hardware = pic32_sqi_unprepare_hardware;

 ret = devm_spi_register_master(&pdev->dev, master);
 if (ret) {
  dev_err(&master->dev, "failed registering spi master\n");
  free_irq(sqi->irq, sqi);
  goto err_free_ring;
 }

 platform_set_drvdata(pdev, sqi);

 return 0;

err_free_ring:
 ring_desc_ring_free(sqi);

err_disable_clk:
 clk_disable_unprepare(sqi->base_clk);
 clk_disable_unprepare(sqi->sys_clk);

err_free_master:
 spi_master_put(master);
 return ret;
}
