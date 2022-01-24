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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct ssb_pcicore {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ssb_pcicore*,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct ssb_pcicore*,int const,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct ssb_pcicore *pc, u8 phy)
{
	const u16 mdio_control = 0x128;
	const u16 mdio_data = 0x12C;
	u32 v;
	int i;

	v = (1 << 30); /* Start of Transaction */
	v |= (1 << 28); /* Write Transaction */
	v |= (1 << 17); /* Turnaround */
	v |= (0x1F << 18);
	v |= (phy << 4);
	FUNC2(pc, mdio_data, v);

	FUNC3(10);
	for (i = 0; i < 200; i++) {
		v = FUNC1(pc, mdio_control);
		if (v & 0x100 /* Trans complete */)
			break;
		FUNC0(1);
	}
}