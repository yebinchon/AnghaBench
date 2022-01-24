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
struct ni_gpct {int dummy; } ;
struct comedi_subdevice {struct ni_gpct* private; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_INPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct comedi_device*,struct ni_gpct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ni_gpct*) ; 
 int FUNC3 (struct comedi_device*,struct comedi_subdevice*) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct ni_gpct *counter = s->private;
	int retval;

	retval = FUNC1(dev, counter, COMEDI_INPUT);
	if (retval) {
		FUNC0(dev->class_dev,
			"no dma channel available for use by counter\n");
		return retval;
	}
	FUNC2(counter);

	return FUNC3(dev, s);
}