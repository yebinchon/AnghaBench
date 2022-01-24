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
struct usbduxfast_private {int /*<<< orphan*/  mut; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct usbduxfast_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct comedi_device*,int) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				struct comedi_subdevice *s)
{
	struct usbduxfast_private *devpriv = dev->private;
	int ret;

	FUNC0(&devpriv->mut);
	ret = FUNC2(dev, 1);
	FUNC1(&devpriv->mut);

	return ret;
}