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
struct device {int dummy; } ;
struct iio_dev {struct device dev; } ;

/* Variables and functions */
 scalar_t__ ADE7854_STARTUP_DELAY ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int FUNC1 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev)
{
	int ret;
	struct device *dev = &indio_dev->dev;

	/* Disable IRQ */
	ret = FUNC1(dev, false);
	if (ret) {
		FUNC2(dev, "disable irq failed");
		goto err_ret;
	}

	FUNC0(dev);
	FUNC3(ADE7854_STARTUP_DELAY, ADE7854_STARTUP_DELAY + 100);

err_ret:
	return ret;
}