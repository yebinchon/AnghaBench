
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int parent; } ;
struct spi_device {int mode; int bits_per_word; TYPE_2__ dev; int max_speed_hz; } ;
struct TYPE_8__ {int reset; int po; int mrdy; int srdy; int reset_out; } ;
struct ifx_spi_device {TYPE_1__ gpio; int flags; int io_work_tasklet; int mdm_reset_wait; void* rx_buffer; int rx_bus; struct spi_device* spi_dev; void* tx_buffer; int tx_bus; scalar_t__ spi_slave_cts; scalar_t__ spi_more; int swap_buf; int max_hz; int use_dma; int modem; int spi_timer; scalar_t__ power_status; int power_lock; int write_lock; } ;
struct ifx_modem_platform_data {int rst_pmu; int pwr_on; int mrdy; int srdy; int rst_out; int max_hz; int use_dma; int modem_type; } ;


 int DRVNAME ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IFX_SPI_MODE ;
 int IFX_SPI_STATE_IO_IN_PROGRESS ;
 int IFX_SPI_STATE_PRESENT ;
 int IFX_SPI_TRANSFER_SIZE ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 int SPI_LOOP ;
 int clear_bit (int ,int *) ;
 int dev_dbg (TYPE_2__*,char*) ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct ifx_modem_platform_data* dev_get_platdata (TYPE_2__*) ;
 int dev_info (TYPE_2__*,char*,int,int,int,int,int) ;
 void* dma_alloc_coherent (int ,int ,int *,int ) ;
 int free_irq (int,struct ifx_spi_device*) ;
 scalar_t__ gpio_direction_input (int) ;
 scalar_t__ gpio_direction_output (int,int ) ;
 scalar_t__ gpio_export (int,int) ;
 int gpio_free (int) ;
 int gpio_get_value (int) ;
 int gpio_request (int,char*) ;
 int gpio_to_irq (int) ;
 int ifx_spi_create_port (struct ifx_spi_device*) ;
 int ifx_spi_free_device (struct ifx_spi_device*) ;
 int ifx_spi_handle_srdy (struct ifx_spi_device*) ;
 int ifx_spi_io ;
 int ifx_spi_reset (struct ifx_spi_device*) ;
 int ifx_spi_reset_interrupt ;
 int ifx_spi_srdy_interrupt ;
 int ifx_spi_timeout ;
 int init_waitqueue_head (int *) ;
 int kfree (struct ifx_spi_device*) ;
 struct ifx_spi_device* kzalloc (int,int ) ;
 int mrdy_assert (struct ifx_spi_device*) ;
 int mrdy_set_low (struct ifx_spi_device*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int pm_runtime_set_active (TYPE_2__*) ;
 int request_irq (int,int ,int,int ,struct ifx_spi_device*) ;
 struct ifx_spi_device* saved_ifx_dev ;
 int set_bit (int ,int *) ;
 int spi_bpw ;
 int spi_set_drvdata (struct spi_device*,struct ifx_spi_device*) ;
 int spi_setup (struct spi_device*) ;
 int spin_lock_init (int *) ;
 int swap_buf_16 ;
 int swap_buf_32 ;
 int swap_buf_8 ;
 int tasklet_init (int *,int ,unsigned long) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int ifx_spi_spi_probe(struct spi_device *spi)
{
 int ret;
 int srdy;
 struct ifx_modem_platform_data *pl_data;
 struct ifx_spi_device *ifx_dev;

 if (saved_ifx_dev) {
  dev_dbg(&spi->dev, "ignoring subsequent detection");
  return -ENODEV;
 }

 pl_data = dev_get_platdata(&spi->dev);
 if (!pl_data) {
  dev_err(&spi->dev, "missing platform data!");
  return -ENODEV;
 }


 ifx_dev = kzalloc(sizeof(struct ifx_spi_device), GFP_KERNEL);
 if (!ifx_dev) {
  dev_err(&spi->dev, "spi device allocation failed");
  return -ENOMEM;
 }
 saved_ifx_dev = ifx_dev;
 ifx_dev->spi_dev = spi;
 clear_bit(IFX_SPI_STATE_IO_IN_PROGRESS, &ifx_dev->flags);
 spin_lock_init(&ifx_dev->write_lock);
 spin_lock_init(&ifx_dev->power_lock);
 ifx_dev->power_status = 0;
 timer_setup(&ifx_dev->spi_timer, ifx_spi_timeout, 0);
 ifx_dev->modem = pl_data->modem_type;
 ifx_dev->use_dma = pl_data->use_dma;
 ifx_dev->max_hz = pl_data->max_hz;

 spi->max_speed_hz = ifx_dev->max_hz;
 spi->mode = IFX_SPI_MODE | (SPI_LOOP & spi->mode);
 spi->bits_per_word = spi_bpw;
 ret = spi_setup(spi);
 if (ret) {
  dev_err(&spi->dev, "SPI setup wasn't successful %d", ret);
  kfree(ifx_dev);
  return -ENODEV;
 }


 if (spi->bits_per_word == 32)
  ifx_dev->swap_buf = swap_buf_32;
 else if (spi->bits_per_word == 16)
  ifx_dev->swap_buf = swap_buf_16;
 else
  ifx_dev->swap_buf = swap_buf_8;


 ifx_dev->spi_more = 0;
 ifx_dev->spi_slave_cts = 0;


 ifx_dev->tx_buffer = dma_alloc_coherent(ifx_dev->spi_dev->dev.parent,
    IFX_SPI_TRANSFER_SIZE,
    &ifx_dev->tx_bus,
    GFP_KERNEL);
 if (!ifx_dev->tx_buffer) {
  dev_err(&spi->dev, "DMA-TX buffer allocation failed");
  ret = -ENOMEM;
  goto error_ret;
 }
 ifx_dev->rx_buffer = dma_alloc_coherent(ifx_dev->spi_dev->dev.parent,
    IFX_SPI_TRANSFER_SIZE,
    &ifx_dev->rx_bus,
    GFP_KERNEL);
 if (!ifx_dev->rx_buffer) {
  dev_err(&spi->dev, "DMA-RX buffer allocation failed");
  ret = -ENOMEM;
  goto error_ret;
 }


 init_waitqueue_head(&ifx_dev->mdm_reset_wait);

 spi_set_drvdata(spi, ifx_dev);
 tasklet_init(&ifx_dev->io_work_tasklet, ifx_spi_io,
      (unsigned long)ifx_dev);

 set_bit(IFX_SPI_STATE_PRESENT, &ifx_dev->flags);


 ret = ifx_spi_create_port(ifx_dev);
 if (ret != 0) {
  dev_err(&spi->dev, "create default tty port failed");
  goto error_ret;
 }

 ifx_dev->gpio.reset = pl_data->rst_pmu;
 ifx_dev->gpio.po = pl_data->pwr_on;
 ifx_dev->gpio.mrdy = pl_data->mrdy;
 ifx_dev->gpio.srdy = pl_data->srdy;
 ifx_dev->gpio.reset_out = pl_data->rst_out;

 dev_info(&spi->dev, "gpios %d, %d, %d, %d, %d",
   ifx_dev->gpio.reset, ifx_dev->gpio.po, ifx_dev->gpio.mrdy,
   ifx_dev->gpio.srdy, ifx_dev->gpio.reset_out);


 ret = gpio_request(ifx_dev->gpio.reset, "ifxModem");
 if (ret < 0) {
  dev_err(&spi->dev, "Unable to allocate GPIO%d (RESET)",
   ifx_dev->gpio.reset);
  goto error_ret;
 }
 ret += gpio_direction_output(ifx_dev->gpio.reset, 0);
 ret += gpio_export(ifx_dev->gpio.reset, 1);
 if (ret) {
  dev_err(&spi->dev, "Unable to configure GPIO%d (RESET)",
   ifx_dev->gpio.reset);
  ret = -EBUSY;
  goto error_ret2;
 }

 ret = gpio_request(ifx_dev->gpio.po, "ifxModem");
 ret += gpio_direction_output(ifx_dev->gpio.po, 0);
 ret += gpio_export(ifx_dev->gpio.po, 1);
 if (ret) {
  dev_err(&spi->dev, "Unable to configure GPIO%d (ON)",
   ifx_dev->gpio.po);
  ret = -EBUSY;
  goto error_ret3;
 }

 ret = gpio_request(ifx_dev->gpio.mrdy, "ifxModem");
 if (ret < 0) {
  dev_err(&spi->dev, "Unable to allocate GPIO%d (MRDY)",
   ifx_dev->gpio.mrdy);
  goto error_ret3;
 }
 ret += gpio_export(ifx_dev->gpio.mrdy, 1);
 ret += gpio_direction_output(ifx_dev->gpio.mrdy, 0);
 if (ret) {
  dev_err(&spi->dev, "Unable to configure GPIO%d (MRDY)",
   ifx_dev->gpio.mrdy);
  ret = -EBUSY;
  goto error_ret4;
 }

 ret = gpio_request(ifx_dev->gpio.srdy, "ifxModem");
 if (ret < 0) {
  dev_err(&spi->dev, "Unable to allocate GPIO%d (SRDY)",
   ifx_dev->gpio.srdy);
  ret = -EBUSY;
  goto error_ret4;
 }
 ret += gpio_export(ifx_dev->gpio.srdy, 1);
 ret += gpio_direction_input(ifx_dev->gpio.srdy);
 if (ret) {
  dev_err(&spi->dev, "Unable to configure GPIO%d (SRDY)",
   ifx_dev->gpio.srdy);
  ret = -EBUSY;
  goto error_ret5;
 }

 ret = gpio_request(ifx_dev->gpio.reset_out, "ifxModem");
 if (ret < 0) {
  dev_err(&spi->dev, "Unable to allocate GPIO%d (RESET_OUT)",
   ifx_dev->gpio.reset_out);
  goto error_ret5;
 }
 ret += gpio_export(ifx_dev->gpio.reset_out, 1);
 ret += gpio_direction_input(ifx_dev->gpio.reset_out);
 if (ret) {
  dev_err(&spi->dev, "Unable to configure GPIO%d (RESET_OUT)",
   ifx_dev->gpio.reset_out);
  ret = -EBUSY;
  goto error_ret6;
 }

 ret = request_irq(gpio_to_irq(ifx_dev->gpio.reset_out),
     ifx_spi_reset_interrupt,
     IRQF_TRIGGER_RISING|IRQF_TRIGGER_FALLING, DRVNAME,
     ifx_dev);
 if (ret) {
  dev_err(&spi->dev, "Unable to get irq %x\n",
   gpio_to_irq(ifx_dev->gpio.reset_out));
  goto error_ret6;
 }

 ret = ifx_spi_reset(ifx_dev);

 ret = request_irq(gpio_to_irq(ifx_dev->gpio.srdy),
     ifx_spi_srdy_interrupt, IRQF_TRIGGER_RISING, DRVNAME,
     ifx_dev);
 if (ret) {
  dev_err(&spi->dev, "Unable to get irq %x",
   gpio_to_irq(ifx_dev->gpio.srdy));
  goto error_ret7;
 }


 pm_runtime_set_active(&spi->dev);
 pm_runtime_enable(&spi->dev);





 srdy = gpio_get_value(ifx_dev->gpio.srdy);

 if (srdy) {
  mrdy_assert(ifx_dev);
  ifx_spi_handle_srdy(ifx_dev);
 } else
  mrdy_set_low(ifx_dev);
 return 0;

error_ret7:
 free_irq(gpio_to_irq(ifx_dev->gpio.reset_out), ifx_dev);
error_ret6:
 gpio_free(ifx_dev->gpio.srdy);
error_ret5:
 gpio_free(ifx_dev->gpio.mrdy);
error_ret4:
 gpio_free(ifx_dev->gpio.reset);
error_ret3:
 gpio_free(ifx_dev->gpio.po);
error_ret2:
 gpio_free(ifx_dev->gpio.reset_out);
error_ret:
 ifx_spi_free_device(ifx_dev);
 saved_ifx_dev = ((void*)0);
 return ret;
}
