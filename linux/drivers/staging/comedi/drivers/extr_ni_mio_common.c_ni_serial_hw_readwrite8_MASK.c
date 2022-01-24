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
struct ni_private {int serial_interval_ns; int /*<<< orphan*/  dio_control; int /*<<< orphan*/  dio_output; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct ni_private* private; } ;

/* Variables and functions */
 int EBUSY ; 
 int ETIME ; 
 int /*<<< orphan*/  NISTC_DIO_CTRL_HW_SER_START ; 
 int /*<<< orphan*/  NISTC_DIO_CTRL_REG ; 
 int /*<<< orphan*/  NISTC_DIO_OUT_REG ; 
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  NISTC_DIO_OUT_SERIAL_MASK ; 
 int /*<<< orphan*/  NISTC_DIO_SERIAL_IN_REG ; 
 int /*<<< orphan*/  NISTC_STATUS1_REG ; 
 unsigned int NISTC_STATUS1_SERIO_IN_PROG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
				   struct comedi_subdevice *s,
				   unsigned char data_out,
				   unsigned char *data_in)
{
	struct ni_private *devpriv = dev->private;
	unsigned int status1;
	int err = 0, count = 20;

	devpriv->dio_output &= ~NISTC_DIO_OUT_SERIAL_MASK;
	devpriv->dio_output |= FUNC0(data_out);
	FUNC3(dev, devpriv->dio_output, NISTC_DIO_OUT_REG);

	status1 = FUNC2(dev, NISTC_STATUS1_REG);
	if (status1 & NISTC_STATUS1_SERIO_IN_PROG) {
		err = -EBUSY;
		goto error;
	}

	devpriv->dio_control |= NISTC_DIO_CTRL_HW_SER_START;
	FUNC3(dev, devpriv->dio_control, NISTC_DIO_CTRL_REG);
	devpriv->dio_control &= ~NISTC_DIO_CTRL_HW_SER_START;

	/* Wait until STC says we're done, but don't loop infinitely. */
	while ((status1 = FUNC2(dev, NISTC_STATUS1_REG)) &
	       NISTC_STATUS1_SERIO_IN_PROG) {
		/* Delay one bit per loop */
		FUNC4((devpriv->serial_interval_ns + 999) / 1000);
		if (--count < 0) {
			FUNC1(dev->class_dev,
				"SPI serial I/O didn't finish in time!\n");
			err = -ETIME;
			goto error;
		}
	}

	/*
	 * Delay for last bit. This delay is absolutely necessary, because
	 * NISTC_STATUS1_SERIO_IN_PROG goes high one bit too early.
	 */
	FUNC4((devpriv->serial_interval_ns + 999) / 1000);

	if (data_in)
		*data_in = FUNC2(dev, NISTC_DIO_SERIAL_IN_REG);

error:
	FUNC3(dev, devpriv->dio_control, NISTC_DIO_CTRL_REG);

	return err;
}