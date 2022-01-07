
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char sign; int realbits; int storagebits; } ;
struct iio_chan_spec {int differential; int channel2; int indexed; int scan_index; TYPE_1__ scan_type; void* info_mask_shared_by_type; void* info_mask_separate; int address; scalar_t__ channel; int type; } ;


 int AD7280A_ALL_CELLS ;
 int AD7280A_CELLS_PER_DEV ;
 void* BIT (int ) ;
 int IIO_CHAN_INFO_RAW ;
 int IIO_CHAN_INFO_SCALE ;
 int IIO_VOLTAGE ;

__attribute__((used)) static void ad7280_total_voltage_channel_init(struct iio_chan_spec *chan,
           int cnt, int dev)
{
 chan->type = IIO_VOLTAGE;
 chan->differential = 1;
 chan->channel = 0;
 chan->channel2 = dev * AD7280A_CELLS_PER_DEV;
 chan->address = AD7280A_ALL_CELLS;
 chan->indexed = 1;
 chan->info_mask_separate = BIT(IIO_CHAN_INFO_RAW);
 chan->info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE);
 chan->scan_index = cnt;
 chan->scan_type.sign = 'u';
 chan->scan_type.realbits = 32;
 chan->scan_type.storagebits = 32;
}
