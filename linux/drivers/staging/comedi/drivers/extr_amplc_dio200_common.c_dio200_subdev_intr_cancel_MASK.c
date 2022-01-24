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
struct dio200_subdev_intr {int /*<<< orphan*/  spinlock; scalar_t__ active; } ;
struct comedi_subdevice {struct dio200_subdev_intr* private; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				     struct comedi_subdevice *s)
{
	struct dio200_subdev_intr *subpriv = s->private;
	unsigned long flags;

	FUNC1(&subpriv->spinlock, flags);
	if (subpriv->active)
		FUNC0(dev, s);

	FUNC2(&subpriv->spinlock, flags);

	return 0;
}