
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_chan_spec {int channel; int type; } ;


 int IIO_TEMP ;

__attribute__((used)) static void ad7280_temp_channel_init(struct iio_chan_spec *chan, int i)
{
 chan->type = IIO_TEMP;
 chan->channel = i;
}
