
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_chan_spec {int dummy; } ;
struct ad7280_state {struct iio_chan_spec* channels; } ;


 int AD7280A_AUX_ADC_1 ;
 int AD7280A_AUX_ADC_6 ;
 int AD7280A_CALC_TEMP_CHAN_NUM (int,int) ;
 int AD7280A_CALC_VOLTAGE_CHAN_NUM (int,int) ;
 int AD7280A_CELL_VOLTAGE_1 ;
 int ad7280_common_fields_init (struct iio_chan_spec*,int,int) ;
 int ad7280_temp_channel_init (struct iio_chan_spec*,int) ;
 int ad7280_voltage_channel_init (struct iio_chan_spec*,int) ;
 int ad7280a_devaddr (int) ;

__attribute__((used)) static void ad7280_init_dev_channels(struct ad7280_state *st, int dev, int *cnt)
{
 int addr, ch, i;
 struct iio_chan_spec *chan;

 for (ch = AD7280A_CELL_VOLTAGE_1; ch <= AD7280A_AUX_ADC_6; ch++) {
  chan = &st->channels[*cnt];

  if (ch < AD7280A_AUX_ADC_1) {
   i = AD7280A_CALC_VOLTAGE_CHAN_NUM(dev, ch);
   ad7280_voltage_channel_init(chan, i);
  } else {
   i = AD7280A_CALC_TEMP_CHAN_NUM(dev, ch);
   ad7280_temp_channel_init(chan, i);
  }

  addr = ad7280a_devaddr(dev) << 8 | ch;
  ad7280_common_fields_init(chan, addr, *cnt);

  (*cnt)++;
 }
}
