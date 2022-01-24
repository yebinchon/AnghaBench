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
struct nidio96_private {int /*<<< orphan*/  mite_channel_lock; int /*<<< orphan*/ * di_mite_chan; } ;
struct comedi_device {scalar_t__ mmio; struct nidio96_private* private; } ;

/* Variables and functions */
 scalar_t__ DMA_LINE_CONTROL_GROUP1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev)
{
	struct nidio96_private *devpriv = dev->private;
	unsigned long flags;

	FUNC3(&devpriv->mite_channel_lock, flags);
	if (devpriv->di_mite_chan) {
		FUNC0(devpriv->di_mite_chan);
		devpriv->di_mite_chan = NULL;
		FUNC5(FUNC1(0) |
		       FUNC2(0),
		       dev->mmio + DMA_LINE_CONTROL_GROUP1);
	}
	FUNC4(&devpriv->mite_channel_lock, flags);
}