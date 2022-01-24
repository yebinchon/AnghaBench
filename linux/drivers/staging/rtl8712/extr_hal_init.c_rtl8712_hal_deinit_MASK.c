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
typedef  int /*<<< orphan*/  uint ;
struct _adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ AFE_MISC ; 
 scalar_t__ AFE_PLL_CTRL ; 
 scalar_t__ LDOA15_CTRL ; 
 scalar_t__ LDOV12D_CTRL ; 
 scalar_t__ PMC_FSM ; 
 scalar_t__ RF_CTRL ; 
 scalar_t__ SPS0_CTRL ; 
 scalar_t__ SYS_CLKR ; 
 scalar_t__ SYS_FUNC_EN ; 
 scalar_t__ SYS_ISO_CTRL ; 
 int /*<<< orphan*/  _SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct _adapter*,scalar_t__,int) ; 

uint FUNC2(struct _adapter *padapter)
{
	FUNC1(padapter, RF_CTRL, 0x00);
	/* Turn off BB */
	FUNC0(20);
	/* Turn off MAC	*/
	FUNC1(padapter, SYS_CLKR + 1, 0x38); /* Switch Control Path */
	FUNC1(padapter, SYS_FUNC_EN + 1, 0x70);
	FUNC1(padapter, PMC_FSM, 0x06);  /* Enable Loader Data Keep */
	FUNC1(padapter, SYS_ISO_CTRL, 0xF9); /* Isolation signals from
						     * CORE, PLL
						     */
	FUNC1(padapter, SYS_ISO_CTRL + 1, 0xe8); /* Enable EFUSE 1.2V */
	FUNC1(padapter, AFE_PLL_CTRL, 0x00); /* Disable AFE PLL. */
	FUNC1(padapter, LDOA15_CTRL, 0x54);  /* Disable A15V */
	FUNC1(padapter, SYS_FUNC_EN + 1, 0x50); /* Disable E-Fuse 1.2V */
	FUNC1(padapter, LDOV12D_CTRL, 0x24); /* Disable LDO12(for CE) */
	FUNC1(padapter, AFE_MISC, 0x30); /* Disable AFE BG&MB */
	/* Option for Disable 1.6V LDO.	*/
	FUNC1(padapter, SPS0_CTRL, 0x56); /* Disable 1.6V LDO */
	FUNC1(padapter, SPS0_CTRL + 1, 0x43);  /* Set SW PFM */
	return _SUCCESS;
}