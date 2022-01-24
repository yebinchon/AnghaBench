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
struct vnt_private {int dummy; } ;

/* Variables and functions */
#define  CARD_LB_MAC 130 
#define  CARD_LB_NONE 129 
#define  CARD_LB_PHY 128 
 int /*<<< orphan*/  FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (struct vnt_private*,int /*<<< orphan*/ ) ; 

void FUNC2(struct vnt_private *priv,
			  unsigned short wLoopbackMode)
{
	switch (wLoopbackMode) {
	case CARD_LB_NONE:
	case CARD_LB_MAC:
	case CARD_LB_PHY:
		break;
	default:
		break;
	}
	/* set MAC loopback */
	FUNC1(priv, FUNC0(wLoopbackMode));
	/* set Baseband loopback */
}