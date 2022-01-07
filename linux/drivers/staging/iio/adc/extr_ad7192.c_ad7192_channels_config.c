
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct iio_dev {int num_channels; struct iio_chan_spec* channels; TYPE_1__ dev; } ;
struct iio_chan_spec {scalar_t__ type; int info_mask_shared_by_type_available; int info_mask_shared_by_all; } ;
struct ad7192_state {int devid; } ;


 void* ARRAY_SIZE (struct iio_chan_spec*) ;
 int BIT (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;

 int IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY ;
 int IIO_CHAN_INFO_SCALE ;
 scalar_t__ IIO_TEMP ;
 struct iio_chan_spec* ad7192_channels ;
 struct iio_chan_spec* ad7193_channels ;
 struct iio_chan_spec* devm_kcalloc (int ,int,int,int ) ;
 struct ad7192_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad7192_channels_config(struct iio_dev *indio_dev)
{
 struct ad7192_state *st = iio_priv(indio_dev);
 const struct iio_chan_spec *channels;
 struct iio_chan_spec *chan;
 int i;

 switch (st->devid) {
 case 128:
  channels = ad7193_channels;
  indio_dev->num_channels = ARRAY_SIZE(ad7193_channels);
  break;
 default:
  channels = ad7192_channels;
  indio_dev->num_channels = ARRAY_SIZE(ad7192_channels);
  break;
 }

 chan = devm_kcalloc(indio_dev->dev.parent, indio_dev->num_channels,
       sizeof(*chan), GFP_KERNEL);
 if (!chan)
  return -ENOMEM;

 indio_dev->channels = chan;

 for (i = 0; i < indio_dev->num_channels; i++) {
  *chan = channels[i];
  chan->info_mask_shared_by_all |=
   BIT(IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY);
  if (chan->type != IIO_TEMP)
   chan->info_mask_shared_by_type_available |=
    BIT(IIO_CHAN_INFO_SCALE);
  chan++;
 }

 return 0;
}
