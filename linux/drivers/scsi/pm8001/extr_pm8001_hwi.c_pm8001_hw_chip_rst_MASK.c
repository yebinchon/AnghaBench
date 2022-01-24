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
struct pm8001_hba_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPC_REG_RESET ; 
 int SPC_REG_RESET_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct pm8001_hba_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pm8001_hba_info*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct pm8001_hba_info *pm8001_ha)
{
	u32 i;
	u32 regVal;
	FUNC0(pm8001_ha,
		FUNC4("chip reset start\n"));

	/* do SPC chip reset. */
	regVal = FUNC2(pm8001_ha, 1, SPC_REG_RESET);
	regVal &= ~(SPC_REG_RESET_DEVICE);
	FUNC3(pm8001_ha, 1, SPC_REG_RESET, regVal);

	/* delay 10 usec */
	FUNC5(10);

	/* bring chip reset out of reset */
	regVal = FUNC2(pm8001_ha, 1, SPC_REG_RESET);
	regVal |= SPC_REG_RESET_DEVICE;
	FUNC3(pm8001_ha, 1, SPC_REG_RESET, regVal);

	/* delay 10 usec */
	FUNC5(10);

	/* wait for 20 msec until the firmware gets reloaded */
	i = 20;
	do {
		FUNC1(1);
	} while ((--i) != 0);

	FUNC0(pm8001_ha,
		FUNC4("chip reset finished\n"));
}