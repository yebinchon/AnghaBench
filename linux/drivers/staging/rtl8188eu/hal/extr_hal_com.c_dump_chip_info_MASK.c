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
typedef  int uint ;
struct HAL_VERSION {scalar_t__ ChipType; scalar_t__ VendorType; int CUTVersion; } ;

/* Variables and functions */
 int A_CUT_VERSION ; 
 int B_CUT_VERSION ; 
 scalar_t__ CHIP_VENDOR_TSMC ; 
 int C_CUT_VERSION ; 
 int D_CUT_VERSION ; 
 int E_CUT_VERSION ; 
 scalar_t__ NORMAL_CHIP ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*,char*,...) ; 

void FUNC2(struct HAL_VERSION	chip_vers)
{
	uint cnt = 0;
	char buf[128];

	cnt += FUNC1((buf+cnt), "Chip Version Info: CHIP_8188E_");
	cnt += FUNC1((buf+cnt), "%s_", chip_vers.ChipType == NORMAL_CHIP ?
		       "Normal_Chip" : "Test_Chip");
	cnt += FUNC1((buf+cnt), "%s_", chip_vers.VendorType == CHIP_VENDOR_TSMC ?
		       "TSMC" : "UMC");
	if (chip_vers.CUTVersion == A_CUT_VERSION)
		cnt += FUNC1((buf+cnt), "A_CUT_");
	else if (chip_vers.CUTVersion == B_CUT_VERSION)
		cnt += FUNC1((buf+cnt), "B_CUT_");
	else if (chip_vers.CUTVersion == C_CUT_VERSION)
		cnt += FUNC1((buf+cnt), "C_CUT_");
	else if (chip_vers.CUTVersion == D_CUT_VERSION)
		cnt += FUNC1((buf+cnt), "D_CUT_");
	else if (chip_vers.CUTVersion == E_CUT_VERSION)
		cnt += FUNC1((buf+cnt), "E_CUT_");
	else
		cnt += FUNC1((buf+cnt), "UNKNOWN_CUT(%d)_",
			       chip_vers.CUTVersion);
	cnt += FUNC1((buf+cnt), "1T1R_");
	cnt += FUNC1((buf+cnt), "RomVer(0)\n");

	FUNC0("%s", buf);
}