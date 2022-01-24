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
typedef  int u32 ;
typedef  int u16 ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;
struct ade7854_state {int* tx; int* rx; int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  i2c; } ;

/* Variables and functions */
 int EINVAL ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 struct ade7854_state* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev,
				u16 reg_address,
				u32 *val,
				int bits)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct ade7854_state *st = FUNC3(indio_dev);
	int ret;

	FUNC4(&st->buf_lock);
	st->tx[0] = (reg_address >> 8) & 0xFF;
	st->tx[1] = reg_address & 0xFF;

	ret = FUNC2(st->i2c, st->tx, 2);
	if (ret < 0)
		goto unlock;

	ret = FUNC1(st->i2c, st->rx, bits);
	if (ret < 0)
		goto unlock;

	switch (bits) {
	case 8:
		*val = st->rx[0];
		break;
	case 16:
		*val = (st->rx[0] << 8) | st->rx[1];
		break;
	case 24:
		*val = (st->rx[0] << 16) | (st->rx[1] << 8) | st->rx[2];
		break;
	case 32:
		*val = (st->rx[0] << 24) | (st->rx[1] << 16) |
			(st->rx[2] << 8) | st->rx[3];
		break;
	default:
		ret = -EINVAL;
		goto unlock;
	}

unlock:
	FUNC5(&st->buf_lock);
	return ret;
}