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
struct das16_private_struct {int /*<<< orphan*/  dma; int /*<<< orphan*/  timer; } ;
struct comedi_device {struct das16_private_struct* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev)
{
	struct das16_private_struct *devpriv = dev->private;

	if (devpriv) {
		FUNC1(&devpriv->timer);
		FUNC0(devpriv->dma);
	}
}