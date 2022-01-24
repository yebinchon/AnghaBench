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
struct dyna_pci10xx_private {int /*<<< orphan*/  mutex; } ;
struct comedi_device {struct dyna_pci10xx_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev)
{
	struct dyna_pci10xx_private *devpriv = dev->private;

	FUNC0(dev);
	if (devpriv)
		FUNC1(&devpriv->mutex);
}