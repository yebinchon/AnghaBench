#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct iio_dev {int num_channels; struct iio_chan_spec* channels; TYPE_1__ dev; } ;
struct iio_chan_spec {scalar_t__ type; int /*<<< orphan*/  info_mask_shared_by_type_available; int /*<<< orphan*/  info_mask_shared_by_all; } ;
struct ad7192_state {int devid; } ;

/* Variables and functions */
 void* FUNC0 (struct iio_chan_spec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  ID_AD7193 128 
 int /*<<< orphan*/  IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY ; 
 int /*<<< orphan*/  IIO_CHAN_INFO_SCALE ; 
 scalar_t__ IIO_TEMP ; 
 struct iio_chan_spec* ad7192_channels ; 
 struct iio_chan_spec* ad7193_channels ; 
 struct iio_chan_spec* FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct ad7192_state* FUNC3 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev)
{
	struct ad7192_state *st = FUNC3(indio_dev);
	const struct iio_chan_spec *channels;
	struct iio_chan_spec *chan;
	int i;

	switch (st->devid) {
	case ID_AD7193:
		channels = ad7193_channels;
		indio_dev->num_channels = FUNC0(ad7193_channels);
		break;
	default:
		channels = ad7192_channels;
		indio_dev->num_channels = FUNC0(ad7192_channels);
		break;
	}

	chan = FUNC2(indio_dev->dev.parent, indio_dev->num_channels,
			    sizeof(*chan), GFP_KERNEL);
	if (!chan)
		return -ENOMEM;

	indio_dev->channels = chan;

	for (i = 0; i < indio_dev->num_channels; i++) {
		*chan = channels[i];
		chan->info_mask_shared_by_all |=
			FUNC1(IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY);
		if (chan->type != IIO_TEMP)
			chan->info_mask_shared_by_type_available |=
				FUNC1(IIO_CHAN_INFO_SCALE);
		chan++;
	}

	return 0;
}