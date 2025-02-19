
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct spi_master {int bus_num; int mode_bits; int auto_runtime_pm; int transfer_one; int prepare_message; int bits_per_word_mask; int max_speed_hz; int min_speed_hz; int num_chipselect; TYPE_1__ dev; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct dln2_spi {int cs; int mode; int port; struct platform_device* pdev; struct spi_master* master; int buf; } ;
struct dln2_platform_data {int port; } ;


 int DLN2_RPM_AUTOSUSPEND_TIMEOUT ;
 int DLN2_SPI_BUF_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int dev_err (struct device*,char*) ;
 struct dln2_platform_data* dev_get_platdata (struct device*) ;
 int devm_kmalloc (struct device*,int ,int ) ;
 int devm_spi_register_master (struct device*,struct spi_master*) ;
 int dln2_spi_cs_enable_all (struct dln2_spi*,int) ;
 int dln2_spi_enable (struct dln2_spi*,int) ;
 int dln2_spi_get_cs_num (struct dln2_spi*,int *) ;
 int dln2_spi_get_speed_range (struct dln2_spi*,int *,int *) ;
 int dln2_spi_get_supported_frame_sizes (struct dln2_spi*,int *) ;
 int dln2_spi_prepare_message ;
 int dln2_spi_transfer_one ;
 int platform_set_drvdata (struct platform_device*,struct spi_master*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_set_suspended (struct device*) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 struct spi_master* spi_alloc_master (struct device*,int) ;
 struct dln2_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;

__attribute__((used)) static int dln2_spi_probe(struct platform_device *pdev)
{
 struct spi_master *master;
 struct dln2_spi *dln2;
 struct dln2_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct device *dev = &pdev->dev;
 int ret;

 master = spi_alloc_master(&pdev->dev, sizeof(*dln2));
 if (!master)
  return -ENOMEM;

 platform_set_drvdata(pdev, master);

 dln2 = spi_master_get_devdata(master);

 dln2->buf = devm_kmalloc(&pdev->dev, DLN2_SPI_BUF_SIZE, GFP_KERNEL);
 if (!dln2->buf) {
  ret = -ENOMEM;
  goto exit_free_master;
 }

 dln2->master = master;
 dln2->master->dev.of_node = dev->of_node;
 dln2->pdev = pdev;
 dln2->port = pdata->port;

 dln2->cs = 0xff;
 dln2->mode = 0xff;


 ret = dln2_spi_enable(dln2, 0);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to disable SPI module\n");
  goto exit_free_master;
 }

 ret = dln2_spi_get_cs_num(dln2, &master->num_chipselect);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to get number of CS pins\n");
  goto exit_free_master;
 }

 ret = dln2_spi_get_speed_range(dln2,
           &master->min_speed_hz,
           &master->max_speed_hz);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to read bus min/max freqs\n");
  goto exit_free_master;
 }

 ret = dln2_spi_get_supported_frame_sizes(dln2,
       &master->bits_per_word_mask);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to read supported frame sizes\n");
  goto exit_free_master;
 }

 ret = dln2_spi_cs_enable_all(dln2, 1);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to enable CS pins\n");
  goto exit_free_master;
 }

 master->bus_num = -1;
 master->mode_bits = SPI_CPOL | SPI_CPHA;
 master->prepare_message = dln2_spi_prepare_message;
 master->transfer_one = dln2_spi_transfer_one;
 master->auto_runtime_pm = 1;


 ret = dln2_spi_enable(dln2, 1);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to enable SPI module\n");
  goto exit_free_master;
 }

 pm_runtime_set_autosuspend_delay(&pdev->dev,
      DLN2_RPM_AUTOSUSPEND_TIMEOUT);
 pm_runtime_use_autosuspend(&pdev->dev);
 pm_runtime_set_active(&pdev->dev);
 pm_runtime_enable(&pdev->dev);

 ret = devm_spi_register_master(&pdev->dev, master);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to register master\n");
  goto exit_register;
 }

 return ret;

exit_register:
 pm_runtime_disable(&pdev->dev);
 pm_runtime_set_suspended(&pdev->dev);

 if (dln2_spi_enable(dln2, 0) < 0)
  dev_err(&pdev->dev, "Failed to disable SPI module\n");
exit_free_master:
 spi_master_put(master);

 return ret;
}
