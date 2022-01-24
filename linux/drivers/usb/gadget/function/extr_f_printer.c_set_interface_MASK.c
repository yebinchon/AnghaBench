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
struct printer_dev {unsigned int interface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct printer_dev*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct printer_dev*) ; 
 int FUNC2 (struct printer_dev*) ; 

__attribute__((used)) static int FUNC3(struct printer_dev *dev, unsigned number)
{
	int			result = 0;

	/* Free the current interface */
	FUNC1(dev);

	result = FUNC2(dev);
	if (result)
		FUNC1(dev);
	else
		dev->interface = number;

	if (!result)
		FUNC0(dev, "Using interface %x\n", number);

	return result;
}