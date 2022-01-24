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
struct vme_bridge {int /*<<< orphan*/  parent; struct tsi148_driver* driver_priv; } ;
struct tsi148_driver {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__* TSI148_GCSR_MBOX ; 
 int* TSI148_LCSR_INTC_MBC ; 
 int* TSI148_LCSR_INTS_MBS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static u32 FUNC2(struct vme_bridge *tsi148_bridge, u32 stat)
{
	int i;
	u32 val;
	u32 serviced = 0;
	struct tsi148_driver *bridge;

	bridge = tsi148_bridge->driver_priv;

	for (i = 0; i < 4; i++) {
		if (stat & TSI148_LCSR_INTS_MBS[i]) {
			val = FUNC1(bridge->base +	TSI148_GCSR_MBOX[i]);
			FUNC0(tsi148_bridge->parent, "VME Mailbox %d received"
				": 0x%x\n", i, val);
			serviced |= TSI148_LCSR_INTC_MBC[i];
		}
	}

	return serviced;
}