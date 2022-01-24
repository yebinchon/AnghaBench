#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u16 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct ad2s1210_state {int* rx; int resolution; int /*<<< orphan*/  lock; int /*<<< orphan*/ * gpios; int /*<<< orphan*/  hysteresis; int /*<<< orphan*/  sdev; } ;
typedef  int s16 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 size_t AD2S1210_SAMPLE ; 
 int EINVAL ; 
#define  IIO_ANGL 129 
#define  IIO_ANGL_VEL 128 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  MOD_POS ; 
 int /*<<< orphan*/  MOD_VEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ad2s1210_state*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct ad2s1210_state* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int *val,
			     int *val2,
			     long m)
{
	struct ad2s1210_state *st = FUNC3(indio_dev);
	u16 negative;
	int ret = 0;
	u16 pos;
	s16 vel;

	FUNC4(&st->lock);
	FUNC2(st->gpios[AD2S1210_SAMPLE], 0);
	/* delay (6 * tck + 20) nano seconds */
	FUNC7(1);

	switch (chan->type) {
	case IIO_ANGL:
		FUNC0(MOD_POS, st);
		break;
	case IIO_ANGL_VEL:
		FUNC0(MOD_VEL, st);
		break;
	default:
		ret = -EINVAL;
		break;
	}
	if (ret < 0)
		goto error_ret;
	ret = FUNC6(st->sdev, st->rx, 2);
	if (ret < 0)
		goto error_ret;

	switch (chan->type) {
	case IIO_ANGL:
		pos = FUNC1((__be16 *)st->rx);
		if (st->hysteresis)
			pos >>= 16 - st->resolution;
		*val = pos;
		ret = IIO_VAL_INT;
		break;
	case IIO_ANGL_VEL:
		negative = st->rx[0] & 0x80;
		vel = FUNC1((__be16 *)st->rx);
		vel >>= 16 - st->resolution;
		if (vel & 0x8000) {
			negative = (0xffff >> st->resolution) << st->resolution;
			vel |= negative;
		}
		*val = vel;
		ret = IIO_VAL_INT;
		break;
	default:
		FUNC5(&st->lock);
		return -EINVAL;
	}

error_ret:
	FUNC2(st->gpios[AD2S1210_SAMPLE], 1);
	/* delay (2 * tck + 20) nano seconds */
	FUNC7(1);
	FUNC5(&st->lock);
	return ret;
}