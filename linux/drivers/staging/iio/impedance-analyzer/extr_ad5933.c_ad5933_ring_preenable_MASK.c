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
struct iio_dev {int /*<<< orphan*/  masklength; int /*<<< orphan*/  active_scan_mask; } ;
struct ad5933_state {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD5933_CTRL_INIT_START_FREQ ; 
 int /*<<< orphan*/  AD5933_CTRL_STANDBY ; 
 int EINVAL ; 
 int FUNC0 (struct ad5933_state*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ad5933_state*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ad5933_state* FUNC3 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev)
{
	struct ad5933_state *st = FUNC3(indio_dev);
	int ret;

	if (FUNC2(indio_dev->active_scan_mask, indio_dev->masklength))
		return -EINVAL;

	ret = FUNC1(st);
	if (ret < 0)
		return ret;

	ret = FUNC0(st, AD5933_CTRL_STANDBY);
	if (ret < 0)
		return ret;

	ret = FUNC0(st, AD5933_CTRL_INIT_START_FREQ);
	if (ret < 0)
		return ret;

	st->state = AD5933_CTRL_INIT_START_FREQ;

	return 0;
}