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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int EN_BCN_FUNCTION ; 
 int EN_TXBCN_RPT ; 
 int /*<<< orphan*/  REG_BCN_CTRL ; 
 int FUNC0 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct adapter *Adapter, u8 variable, u8 *val)
{
	u32 bcn_ctrl_reg;

	bcn_ctrl_reg = REG_BCN_CTRL;

	if (*((u8 *)val))
		FUNC1(Adapter, bcn_ctrl_reg, (EN_BCN_FUNCTION | EN_TXBCN_RPT));
	else
		FUNC1(Adapter, bcn_ctrl_reg, FUNC0(Adapter, bcn_ctrl_reg) & (~(EN_BCN_FUNCTION | EN_TXBCN_RPT)));
}