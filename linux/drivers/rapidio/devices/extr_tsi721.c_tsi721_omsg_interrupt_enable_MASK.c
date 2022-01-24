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
typedef  int u32 ;
struct tsi721_device {int flags; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ TSI721_DEV_CHAN_INTE ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int TSI721_USING_MSIX ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(struct tsi721_device *priv, int ch,
				  u32 inte_mask)
{
	u32 rval;

	if (!inte_mask)
		return;

	/* Clear pending Outbound Messaging interrupts */
	FUNC4(inte_mask, priv->regs + FUNC1(ch));

	/* Enable Outbound Messaging channel interrupts */
	rval = FUNC3(priv->regs + FUNC2(ch));
	FUNC4(rval | inte_mask, priv->regs + FUNC2(ch));

	if (priv->flags & TSI721_USING_MSIX)
		return; /* Finished if we are in MSI-X mode */

	/*
	 * For MSI and INTA interrupt signalling we need to enable next levels
	 */

	/* Enable Device Channel Interrupt */
	rval = FUNC3(priv->regs + TSI721_DEV_CHAN_INTE);
	FUNC4(rval | FUNC0(ch),
		  priv->regs + TSI721_DEV_CHAN_INTE);
}