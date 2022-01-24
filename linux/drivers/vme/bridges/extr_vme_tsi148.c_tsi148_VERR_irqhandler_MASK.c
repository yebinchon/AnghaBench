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
 int TSI148_LCSR_INTC_VERRC ; 
 scalar_t__ TSI148_LCSR_VEAL ; 
 scalar_t__ TSI148_LCSR_VEAT ; 
 int TSI148_LCSR_VEAT_AM_M ; 
 int TSI148_LCSR_VEAT_VEOF ; 
 int /*<<< orphan*/  TSI148_LCSR_VEAT_VESCL ; 
 scalar_t__ TSI148_LCSR_VEAU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ err_chk ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC4 (struct vme_bridge*,unsigned long long,int) ; 

__attribute__((used)) static u32 FUNC5(struct vme_bridge *tsi148_bridge)
{
	unsigned int error_addr_high, error_addr_low;
	unsigned long long error_addr;
	u32 error_attrib;
	int error_am;
	struct tsi148_driver *bridge;

	bridge = tsi148_bridge->driver_priv;

	error_addr_high = FUNC1(bridge->base + TSI148_LCSR_VEAU);
	error_addr_low = FUNC1(bridge->base + TSI148_LCSR_VEAL);
	error_attrib = FUNC1(bridge->base + TSI148_LCSR_VEAT);
	error_am = (error_attrib & TSI148_LCSR_VEAT_AM_M) >> 8;

	FUNC3(error_addr_high, error_addr_low, &error_addr);

	/* Check for exception register overflow (we have lost error data) */
	if (error_attrib & TSI148_LCSR_VEAT_VEOF) {
		FUNC0(tsi148_bridge->parent, "VME Bus Exception Overflow "
			"Occurred\n");
	}

	if (err_chk)
		FUNC4(tsi148_bridge, error_addr, error_am);
	else
		FUNC0(tsi148_bridge->parent,
			"VME Bus Error at address: 0x%llx, attributes: %08x\n",
			error_addr, error_attrib);

	/* Clear Status */
	FUNC2(TSI148_LCSR_VEAT_VESCL, bridge->base + TSI148_LCSR_VEAT);

	return TSI148_LCSR_INTC_VERRC;
}