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
struct ni_private {int /*<<< orphan*/  window_lock; } ;
struct comedi_device {struct ni_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  NI611X_AO_WINDOW_ADDR_REG ; 
 int /*<<< orphan*/  NI611X_AO_WINDOW_DATA_REG ; 
 unsigned short FUNC0 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline unsigned short FUNC4(struct comedi_device *dev, int addr)
{
	struct ni_private *devpriv = dev->private;
	unsigned long flags;
	unsigned short data;

	FUNC2(&devpriv->window_lock, flags);
	FUNC1(dev, addr, NI611X_AO_WINDOW_ADDR_REG);
	data = FUNC0(dev, NI611X_AO_WINDOW_DATA_REG);
	FUNC3(&devpriv->window_lock, flags);
	return data;
}