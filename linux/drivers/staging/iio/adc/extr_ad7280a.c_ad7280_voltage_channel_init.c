
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_chan_spec {int differential; int channel; int channel2; int type; } ;


 int IIO_VOLTAGE ;

__attribute__((used)) static void ad7280_voltage_channel_init(struct iio_chan_spec *chan, int i)
{
 chan->type = IIO_VOLTAGE;
 chan->differential = 1;
 chan->channel = i;
 chan->channel2 = chan->channel + 1;
}
