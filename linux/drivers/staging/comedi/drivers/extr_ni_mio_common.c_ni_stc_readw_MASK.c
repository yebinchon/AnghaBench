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
struct ni_private {int /*<<< orphan*/  window_lock; int /*<<< orphan*/  mite; scalar_t__ is_m_series; } ;
struct comedi_device {struct ni_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  NI_E_STC_WINDOW_ADDR_REG ; 
 int NI_E_STC_WINDOW_DATA_REG ; 
 unsigned int FUNC0 (struct comedi_device*,int) ; 
 unsigned int FUNC1 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC5(struct comedi_device *dev, int reg)
{
	struct ni_private *devpriv = dev->private;
	unsigned long flags;
	unsigned int val;

	if (devpriv->is_m_series) {
		val = FUNC0(dev, reg);
	} else {
		FUNC3(&devpriv->window_lock, flags);
		if (!devpriv->mite && reg < 8) {
			val = FUNC1(dev, reg * 2);
		} else {
			FUNC2(dev, reg, NI_E_STC_WINDOW_ADDR_REG);
			val = FUNC1(dev, NI_E_STC_WINDOW_DATA_REG);
		}
		FUNC4(&devpriv->window_lock, flags);
	}
	return val;
}