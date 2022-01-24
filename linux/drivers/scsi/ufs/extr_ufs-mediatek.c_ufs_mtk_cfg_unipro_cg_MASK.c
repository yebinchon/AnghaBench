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
struct ufs_hba {int dummy; } ;

/* Variables and functions */
 int RX_SYMBOL_CLK_GATE_EN ; 
 int SYS_CLK_GATE_EN ; 
 int TX_CLK_GATE_EN ; 
 int TX_SYMBOL_CLK_REQ_FORCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VS_DEBUGCLOCKENABLE ; 
 int /*<<< orphan*/  VS_SAVEPOWERCONTROL ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_hba*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hba*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ufs_hba *hba, bool enable)
{
	u32 tmp;

	if (enable) {
		FUNC1(hba,
			       FUNC0(VS_SAVEPOWERCONTROL), &tmp);
		tmp = tmp |
		      (1 << RX_SYMBOL_CLK_GATE_EN) |
		      (1 << SYS_CLK_GATE_EN) |
		      (1 << TX_CLK_GATE_EN);
		FUNC2(hba,
			       FUNC0(VS_SAVEPOWERCONTROL), tmp);

		FUNC1(hba,
			       FUNC0(VS_DEBUGCLOCKENABLE), &tmp);
		tmp = tmp & ~(1 << TX_SYMBOL_CLK_REQ_FORCE);
		FUNC2(hba,
			       FUNC0(VS_DEBUGCLOCKENABLE), tmp);
	} else {
		FUNC1(hba,
			       FUNC0(VS_SAVEPOWERCONTROL), &tmp);
		tmp = tmp & ~((1 << RX_SYMBOL_CLK_GATE_EN) |
			      (1 << SYS_CLK_GATE_EN) |
			      (1 << TX_CLK_GATE_EN));
		FUNC2(hba,
			       FUNC0(VS_SAVEPOWERCONTROL), tmp);

		FUNC1(hba,
			       FUNC0(VS_DEBUGCLOCKENABLE), &tmp);
		tmp = tmp | (1 << TX_SYMBOL_CLK_REQ_FORCE);
		FUNC2(hba,
			       FUNC0(VS_DEBUGCLOCKENABLE), tmp);
	}
}