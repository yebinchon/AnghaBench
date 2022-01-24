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
struct iio_dev {int dummy; } ;
struct ad5933_state {int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD5933_CTRL_POWER_DOWN ; 
 int FUNC0 (struct ad5933_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ad5933_state* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev)
{
	struct ad5933_state *st = FUNC2(indio_dev);

	FUNC1(&st->work);
	return FUNC0(st, AD5933_CTRL_POWER_DOWN);
}