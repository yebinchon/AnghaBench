
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char sign; int realbits; int storagebits; } ;
struct iio_chan_spec {int channel; int scan_index; TYPE_1__ scan_type; int type; } ;


 int IIO_TIMESTAMP ;

__attribute__((used)) static void ad7280_timestamp_channel_init(struct iio_chan_spec *chan, int cnt)
{
 chan->type = IIO_TIMESTAMP;
 chan->channel = -1;
 chan->scan_index = cnt;
 chan->scan_type.sign = 's';
 chan->scan_type.realbits = 64;
 chan->scan_type.storagebits = 64;
}
