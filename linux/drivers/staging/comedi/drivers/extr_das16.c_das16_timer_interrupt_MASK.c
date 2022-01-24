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
struct timer_list {int dummy; } ;
struct das16_private_struct {int /*<<< orphan*/  timer; scalar_t__ timer_running; struct comedi_device* dev; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 struct das16_private_struct* devpriv ; 
 struct das16_private_struct* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct das16_private_struct *devpriv = FUNC1(devpriv, t, timer);
	struct comedi_device *dev = devpriv->dev;
	unsigned long flags;

	FUNC0(dev);

	FUNC3(&dev->spinlock, flags);
	if (devpriv->timer_running)
		FUNC2(&devpriv->timer, jiffies + FUNC5());
	FUNC4(&dev->spinlock, flags);
}