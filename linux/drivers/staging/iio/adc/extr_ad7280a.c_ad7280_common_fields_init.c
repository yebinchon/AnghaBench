
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char sign; int realbits; int storagebits; } ;
struct iio_chan_spec {int indexed; int address; int scan_index; TYPE_1__ scan_type; void* info_mask_shared_by_type; void* info_mask_separate; } ;


 void* BIT (int ) ;
 int IIO_CHAN_INFO_RAW ;
 int IIO_CHAN_INFO_SCALE ;

__attribute__((used)) static void ad7280_common_fields_init(struct iio_chan_spec *chan, int addr,
          int cnt)
{
 chan->indexed = 1;
 chan->info_mask_separate = BIT(IIO_CHAN_INFO_RAW);
 chan->info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE);
 chan->address = addr;
 chan->scan_index = cnt;
 chan->scan_type.sign = 'u';
 chan->scan_type.realbits = 12;
 chan->scan_type.storagebits = 32;
}
