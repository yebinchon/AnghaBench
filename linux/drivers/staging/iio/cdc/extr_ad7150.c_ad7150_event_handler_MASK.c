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
struct iio_dev {int dummy; } ;
struct ad7150_chip_info {int old_state; int /*<<< orphan*/  client; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  AD7150_STATUS ; 
 int AD7150_STATUS_OUT1 ; 
 int AD7150_STATUS_OUT2 ; 
 int /*<<< orphan*/  IIO_CAPACITANCE ; 
 int /*<<< orphan*/  IIO_EV_DIR_FALLING ; 
 int /*<<< orphan*/  IIO_EV_DIR_RISING ; 
 int /*<<< orphan*/  IIO_EV_TYPE_THRESH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct ad7150_chip_info* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *private)
{
	struct iio_dev *indio_dev = private;
	struct ad7150_chip_info *chip = FUNC3(indio_dev);
	u8 int_status;
	s64 timestamp = FUNC2(indio_dev);
	int ret;

	ret = FUNC1(chip->client, AD7150_STATUS);
	if (ret < 0)
		return IRQ_HANDLED;

	int_status = ret;

	if ((int_status & AD7150_STATUS_OUT1) &&
	    !(chip->old_state & AD7150_STATUS_OUT1))
		FUNC4(indio_dev,
			       FUNC0(IIO_CAPACITANCE,
						    0,
						    IIO_EV_TYPE_THRESH,
						    IIO_EV_DIR_RISING),
				timestamp);
	else if ((!(int_status & AD7150_STATUS_OUT1)) &&
		 (chip->old_state & AD7150_STATUS_OUT1))
		FUNC4(indio_dev,
			       FUNC0(IIO_CAPACITANCE,
						    0,
						    IIO_EV_TYPE_THRESH,
						    IIO_EV_DIR_FALLING),
			       timestamp);

	if ((int_status & AD7150_STATUS_OUT2) &&
	    !(chip->old_state & AD7150_STATUS_OUT2))
		FUNC4(indio_dev,
			       FUNC0(IIO_CAPACITANCE,
						    1,
						    IIO_EV_TYPE_THRESH,
						    IIO_EV_DIR_RISING),
			       timestamp);
	else if ((!(int_status & AD7150_STATUS_OUT2)) &&
		 (chip->old_state & AD7150_STATUS_OUT2))
		FUNC4(indio_dev,
			       FUNC0(IIO_CAPACITANCE,
						    1,
						    IIO_EV_TYPE_THRESH,
						    IIO_EV_DIR_FALLING),
			       timestamp);
	/* store the status to avoid repushing same events */
	chip->old_state = int_status;

	return IRQ_HANDLED;
}