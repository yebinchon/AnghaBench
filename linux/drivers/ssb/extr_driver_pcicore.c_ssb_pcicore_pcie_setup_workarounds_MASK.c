#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct ssb_pcicore {TYPE_2__* dev; } ;
struct TYPE_3__ {int revision; } ;
struct TYPE_4__ {TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ssb_pcicore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ssb_pcicore*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ssb_pcicore*) ; 
 int /*<<< orphan*/  FUNC4 (struct ssb_pcicore*,int const,int,int) ; 
 int FUNC5 (struct ssb_pcicore*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ssb_pcicore*,int,int) ; 

__attribute__((used)) static void FUNC7(struct ssb_pcicore *pc)
{
	u32 tmp;
	u8 rev = pc->dev->id.revision;

	if (rev == 0 || rev == 1) {
		/* TLP Workaround register. */
		tmp = FUNC5(pc, 0x4);
		tmp |= 0x8;
		FUNC6(pc, 0x4, tmp);
	}
	if (rev == 1) {
		/* DLLP Link Control register. */
		tmp = FUNC5(pc, 0x100);
		tmp |= 0x40;
		FUNC6(pc, 0x100, tmp);
	}

	if (rev == 0) {
		const u8 serdes_rx_device = 0x1F;

		FUNC4(pc, serdes_rx_device,
					2 /* Timer */, 0x8128);
		FUNC4(pc, serdes_rx_device,
					6 /* CDR */, 0x0100);
		FUNC4(pc, serdes_rx_device,
					7 /* CDR BW */, 0x1466);
	} else if (rev == 3 || rev == 4 || rev == 5) {
		/* TODO: DLLP Power Management Threshold */
		FUNC3(pc);
		/* TODO: ASPM */
	} else if (rev == 7) {
		/* TODO: No PLL down */
	}

	if (rev >= 6) {
		/* Miscellaneous Configuration Fixup */
		tmp = FUNC1(pc, FUNC0(5));
		if (!(tmp & 0x8000))
			FUNC2(pc, FUNC0(5),
					tmp | 0x8000);
	}
}