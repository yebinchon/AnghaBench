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
struct comedi_device {int /*<<< orphan*/  attach_lock; scalar_t__ attached; } ;

/* Variables and functions */
 unsigned int COMEDI_NUM_BOARD_MINORS ; 
 struct comedi_device* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct comedi_device *FUNC6(const char *filename)
{
	struct comedi_device *dev, *retval = NULL;
	unsigned int minor;

	if (FUNC4(filename, "/dev/comedi", 11) != 0)
		return NULL;

	if (FUNC3(filename + 11, 0, &minor))
		return NULL;

	if (minor >= COMEDI_NUM_BOARD_MINORS)
		return NULL;

	dev = FUNC0(minor);
	if (!dev)
		return NULL;

	FUNC2(&dev->attach_lock);
	if (dev->attached)
		retval = dev;
	else
		retval = NULL;
	FUNC5(&dev->attach_lock);

	if (!retval)
		FUNC1(dev);

	return retval;
}