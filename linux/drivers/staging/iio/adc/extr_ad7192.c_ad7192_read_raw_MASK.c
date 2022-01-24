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
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  realbits; } ;
struct iio_chan_spec {int const type; TYPE_1__ scan_type; } ;
struct ad7192_state {int conf; int** scale_avail; int fclk; int f_order; int /*<<< orphan*/  mode; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int AD7192_CONF_UNIPOLAR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY 134 
#define  IIO_CHAN_INFO_OFFSET 133 
#define  IIO_CHAN_INFO_RAW 132 
#define  IIO_CHAN_INFO_SAMP_FREQ 131 
#define  IIO_CHAN_INFO_SCALE 130 
#define  IIO_TEMP 129 
 int IIO_VAL_FRACTIONAL ; 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_NANO ; 
#define  IIO_VOLTAGE 128 
 int FUNC2 (struct ad7192_state*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct iio_dev*,struct iio_chan_spec const*,int*) ; 
 struct ad7192_state* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int *val,
			   int *val2,
			   long m)
{
	struct ad7192_state *st = FUNC5(indio_dev);
	bool unipolar = !!(st->conf & AD7192_CONF_UNIPOLAR);

	switch (m) {
	case IIO_CHAN_INFO_RAW:
		return FUNC4(indio_dev, chan, val);
	case IIO_CHAN_INFO_SCALE:
		switch (chan->type) {
		case IIO_VOLTAGE:
			FUNC6(&st->lock);
			*val = st->scale_avail[FUNC0(st->conf)][0];
			*val2 = st->scale_avail[FUNC0(st->conf)][1];
			FUNC7(&st->lock);
			return IIO_VAL_INT_PLUS_NANO;
		case IIO_TEMP:
			*val = 0;
			*val2 = 1000000000 / FUNC3(unipolar);
			return IIO_VAL_INT_PLUS_NANO;
		default:
			return -EINVAL;
		}
	case IIO_CHAN_INFO_OFFSET:
		if (!unipolar)
			*val = -(1 << (chan->scan_type.realbits - 1));
		else
			*val = 0;
		/* Kelvin to Celsius */
		if (chan->type == IIO_TEMP)
			*val -= 273 * FUNC3(unipolar);
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SAMP_FREQ:
		*val = st->fclk /
			(st->f_order * 1024 * FUNC1(st->mode));
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY:
		*val = FUNC2(st);
		*val2 = 1000;
		return IIO_VAL_FRACTIONAL;
	}

	return -EINVAL;
}