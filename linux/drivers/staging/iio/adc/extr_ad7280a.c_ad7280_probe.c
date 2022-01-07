
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {scalar_t__ irq; int dev; int mode; int max_speed_hz; } ;
struct TYPE_3__ {int * parent; } ;
struct iio_dev {int num_channels; int name; int * info; int channels; int modes; TYPE_1__ dev; } ;
struct ad7280_state {int ctrl_hb; int slave_num; int scan_cnt; int cell_threshhigh; int aux_threshhigh; unsigned short readback_delay_us; int channels; int ctrl_lb; struct spi_device* spi; int crc_tab; int lock; } ;
struct ad7280_platform_data {int acquisition_time; int conversion_averaging; int chain_last_alert_ignore; scalar_t__ thermistor_term_en; } ;
struct TYPE_4__ {int name; } ;


 int AD7280A_ALERT ;
 int AD7280A_ALERT_GEN_STATIC_HIGH ;
 int AD7280A_ALERT_RELAY_SIG_CHAIN_DOWN ;
 int AD7280A_CTRL_HB_CONV_AVG (int) ;
 int AD7280A_CTRL_LB_ACQ_TIME (int) ;
 int AD7280A_CTRL_LB_THERMISTOR_EN ;
 int AD7280A_DEVADDR_MASTER ;
 int AD7280A_MAX_SPI_CLK_HZ ;
 int AD7280A_NUM_CH ;
 unsigned short DIV_ROUND_UP (unsigned short,int) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int POLYNOM ;
 int SPI_MODE_1 ;
 int ad7280_attr_init (struct ad7280_state*) ;
 int ad7280_chain_setup (struct ad7280_state*) ;
 int ad7280_channel_init (struct ad7280_state*) ;
 int ad7280_event_handler ;
 int ad7280_info ;
 int ad7280_sw_power_down ;
 int ad7280_write (struct ad7280_state*,int ,int ,int,int) ;
 int ad7280a_devaddr (int) ;
 struct ad7280_platform_data ad7793_default_pdata ;
 int crc8_populate_msb (int ,int ) ;
 struct ad7280_platform_data* dev_get_platdata (int *) ;
 int devm_add_action_or_reset (int *,int ,struct ad7280_state*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int devm_request_threaded_irq (int *,scalar_t__,int *,int ,int,int ,struct iio_dev*) ;
 struct ad7280_state* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int ad7280_probe(struct spi_device *spi)
{
 const struct ad7280_platform_data *pdata = dev_get_platdata(&spi->dev);
 struct ad7280_state *st;
 int ret;
 const unsigned short t_acq_ns[4] = {465, 1010, 1460, 1890};
 const unsigned short n_avg[4] = {1, 2, 4, 8};
 struct iio_dev *indio_dev;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (!indio_dev)
  return -ENOMEM;

 st = iio_priv(indio_dev);
 spi_set_drvdata(spi, indio_dev);
 st->spi = spi;
 mutex_init(&st->lock);

 if (!pdata)
  pdata = &ad7793_default_pdata;

 crc8_populate_msb(st->crc_tab, POLYNOM);

 st->spi->max_speed_hz = AD7280A_MAX_SPI_CLK_HZ;
 st->spi->mode = SPI_MODE_1;
 spi_setup(st->spi);

 st->ctrl_lb = AD7280A_CTRL_LB_ACQ_TIME(pdata->acquisition_time & 0x3);
 st->ctrl_hb = AD7280A_CTRL_HB_CONV_AVG(pdata->conversion_averaging
   & 0x3) | (pdata->thermistor_term_en ?
   AD7280A_CTRL_LB_THERMISTOR_EN : 0);

 ret = ad7280_chain_setup(st);
 if (ret < 0)
  return ret;

 st->slave_num = ret;
 st->scan_cnt = (st->slave_num + 1) * AD7280A_NUM_CH;
 st->cell_threshhigh = 0xFF;
 st->aux_threshhigh = 0xFF;

 ret = devm_add_action_or_reset(&spi->dev, ad7280_sw_power_down, st);
 if (ret)
  return ret;
 st->readback_delay_us =
  ((t_acq_ns[pdata->acquisition_time & 0x3] + 695) *
   (AD7280A_NUM_CH * n_avg[pdata->conversion_averaging & 0x3])) -
  t_acq_ns[pdata->acquisition_time & 0x3] + st->slave_num * 250;


 st->readback_delay_us = DIV_ROUND_UP(st->readback_delay_us, 1000);
 st->readback_delay_us += 5;

 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->dev.parent = &spi->dev;
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = ad7280_channel_init(st);
 if (ret < 0)
  return ret;

 indio_dev->num_channels = ret;
 indio_dev->channels = st->channels;
 indio_dev->info = &ad7280_info;

 ret = ad7280_attr_init(st);
 if (ret < 0)
  return ret;

 ret = devm_iio_device_register(&spi->dev, indio_dev);
 if (ret)
  return ret;

 if (spi->irq > 0) {
  ret = ad7280_write(st, AD7280A_DEVADDR_MASTER,
       AD7280A_ALERT, 1,
       AD7280A_ALERT_RELAY_SIG_CHAIN_DOWN);
  if (ret)
   return ret;

  ret = ad7280_write(st, ad7280a_devaddr(st->slave_num),
       AD7280A_ALERT, 0,
       AD7280A_ALERT_GEN_STATIC_HIGH |
       (pdata->chain_last_alert_ignore & 0xF));
  if (ret)
   return ret;

  ret = devm_request_threaded_irq(&spi->dev, spi->irq,
      ((void*)0),
      ad7280_event_handler,
      IRQF_TRIGGER_FALLING |
      IRQF_ONESHOT,
      indio_dev->name,
      indio_dev);
  if (ret)
   return ret;
 }

 return 0;
}
