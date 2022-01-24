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
struct adapter {int /*<<< orphan*/  bFWReady; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  REG_SYS_CFG ; 
 int SW_OFFLOAD_EN ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct adapter *padapter, u8 enable)
{
	u8 reg_0xf0 = 0;

	if (enable) {
		/* Enable initial offload */
		reg_0xf0 = FUNC2(padapter, REG_SYS_CFG);
		FUNC3(padapter, REG_SYS_CFG, reg_0xf0|SW_OFFLOAD_EN);

		if (!padapter->bFWReady) {
			FUNC0("bFWReady == false call reset 8051...\n");
			FUNC1(padapter);
		}

	} else {
		/* disable initial offload */
		reg_0xf0 = FUNC2(padapter, REG_SYS_CFG);
		FUNC3(padapter, REG_SYS_CFG, reg_0xf0 & ~SW_OFFLOAD_EN);
	}
}