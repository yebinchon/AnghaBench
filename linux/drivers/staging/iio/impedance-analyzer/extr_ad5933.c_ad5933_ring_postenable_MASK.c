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
 int /*<<< orphan*/  AD5933_INIT_EXCITATION_TIME_ms ; 
 struct ad5933_state* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev)
{
	struct ad5933_state *st = FUNC0(indio_dev);

	/*
	 * AD5933_CTRL_INIT_START_FREQ:
	 * High Q complex circuits require a long time to reach steady state.
	 * To facilitate the measurement of such impedances, this mode allows
	 * the user full control of the settling time requirement before
	 * entering start frequency sweep mode where the impedance measurement
	 * takes place. In this mode the impedance is excited with the
	 * programmed start frequency (ad5933_ring_preenable),
	 * but no measurement takes place.
	 */

	FUNC2(&st->work,
			      FUNC1(AD5933_INIT_EXCITATION_TIME_ms));
	return 0;
}