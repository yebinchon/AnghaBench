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
typedef  int /*<<< orphan*/  u32 ;
struct mlme_ext_info {int /*<<< orphan*/  bcn_interval; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  REG_ATIMWND ; 
 int /*<<< orphan*/  REG_BCN_CTRL ; 
 int /*<<< orphan*/  REG_BCN_INTERVAL ; 
 int /*<<< orphan*/  REG_RXTSF_OFFSET_CCK ; 
 int /*<<< orphan*/  REG_RXTSF_OFFSET_OFDM ; 
 int /*<<< orphan*/  REG_SLOT ; 
 int /*<<< orphan*/  REG_TCR ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  TSFRST ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC9(struct adapter *adapt)
{
	u32 value32;
	struct mlme_ext_priv	*pmlmeext = &adapt->mlmeextpriv;
	struct mlme_ext_info	*pmlmeinfo = &pmlmeext->mlmext_info;
	u32 bcn_ctrl_reg			= REG_BCN_CTRL;
	/* reset TSF, enable update TSF, correcting TSF On Beacon */

	/* BCN interval */
	FUNC6(adapt, REG_BCN_INTERVAL, pmlmeinfo->bcn_interval);
	FUNC8(adapt, REG_ATIMWND, 0x02);/*  2ms */

	FUNC3(adapt);

	FUNC8(adapt, REG_SLOT, 0x09);

	value32 = FUNC4(adapt, REG_TCR);
	value32 &= ~TSFRST;
	FUNC7(adapt,  REG_TCR, value32);

	value32 |= TSFRST;
	FUNC7(adapt, REG_TCR, value32);

	/*  NOTE: Fix test chip's bug (about contention windows's randomness) */
	FUNC8(adapt,  REG_RXTSF_OFFSET_CCK, 0x50);
	FUNC8(adapt, REG_RXTSF_OFFSET_OFDM, 0x50);

	FUNC2(adapt, true, true);

	FUNC1(adapt);

	FUNC8(adapt, bcn_ctrl_reg, FUNC5(adapt, bcn_ctrl_reg) | FUNC0(1));
}