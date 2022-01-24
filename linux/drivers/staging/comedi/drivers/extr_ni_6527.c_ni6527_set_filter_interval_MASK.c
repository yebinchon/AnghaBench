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
struct ni6527_private {unsigned int filter_interval; } ;
struct comedi_device {scalar_t__ mmio; struct ni6527_private* private; } ;

/* Variables and functions */
 unsigned int NI6527_CLR_INTERVAL ; 
 scalar_t__ NI6527_CLR_REG ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev,
				       unsigned int val)
{
	struct ni6527_private *devpriv = dev->private;

	if (val != devpriv->filter_interval) {
		FUNC1(val & 0xff, dev->mmio + FUNC0(0));
		FUNC1((val >> 8) & 0xff,
		       dev->mmio + FUNC0(1));
		FUNC1((val >> 16) & 0x0f,
		       dev->mmio + FUNC0(2));

		FUNC1(NI6527_CLR_INTERVAL, dev->mmio + NI6527_CLR_REG);

		devpriv->filter_interval = val;
	}
}