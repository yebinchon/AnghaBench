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
typedef  int u8 ;
typedef  scalar_t__ u64 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  channel; int /*<<< orphan*/  type; } ;
struct ad7150_chip_info {scalar_t__ current_event; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  client; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int /*<<< orphan*/  AD7150_CFG ; 
 int FUNC0 (int) ; 
 int EINVAL ; 
 int IIO_EV_DIR_RISING ; 
#define  IIO_EV_TYPE_MAG_ADAPTIVE 130 
#define  IIO_EV_TYPE_THRESH 129 
#define  IIO_EV_TYPE_THRESH_ADAPTIVE 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct iio_dev*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ad7150_chip_info* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev,
				     const struct iio_chan_spec *chan,
				     enum iio_event_type type,
				     enum iio_event_direction dir, int state)
{
	u8 thresh_type, cfg, adaptive;
	int ret;
	struct ad7150_chip_info *chip = FUNC5(indio_dev);
	int rising = (dir == IIO_EV_DIR_RISING);
	u64 event_code;

	/* Something must always be turned on */
	if (!state)
		return -EINVAL;

	event_code = FUNC1(chan->type, chan->channel, type, dir);
	if (event_code == chip->current_event)
		return 0;
	FUNC6(&chip->state_lock);
	ret = FUNC3(chip->client, AD7150_CFG);
	if (ret < 0)
		goto error_ret;

	cfg = ret & ~((0x03 << 5) | FUNC0(7));

	switch (type) {
	case IIO_EV_TYPE_MAG_ADAPTIVE:
		adaptive = 1;
		if (rising)
			thresh_type = 0x1;
		else
			thresh_type = 0x0;
		break;
	case IIO_EV_TYPE_THRESH_ADAPTIVE:
		adaptive = 1;
		if (rising)
			thresh_type = 0x3;
		else
			thresh_type = 0x2;
		break;
	case IIO_EV_TYPE_THRESH:
		adaptive = 0;
		if (rising)
			thresh_type = 0x1;
		else
			thresh_type = 0x0;
		break;
	default:
		ret = -EINVAL;
		goto error_ret;
	}

	cfg |= (!adaptive << 7) | (thresh_type << 5);

	ret = FUNC4(chip->client, AD7150_CFG, cfg);
	if (ret < 0)
		goto error_ret;

	chip->current_event = event_code;

	/* update control attributes */
	ret = FUNC2(indio_dev, chan->channel, type, dir);
error_ret:
	FUNC7(&chip->state_lock);

	return ret;
}