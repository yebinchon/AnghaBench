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
struct pcl818_private {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  read_subdev; struct pcl818_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev)
{
	struct pcl818_private *devpriv = dev->private;

	if (devpriv) {
		FUNC1(dev, dev->read_subdev);
		FUNC3(dev);
	}
	FUNC2(dev);
	FUNC0(dev);
}