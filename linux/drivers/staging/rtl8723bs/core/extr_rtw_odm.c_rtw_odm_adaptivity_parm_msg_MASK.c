#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char* u8 ;
struct TYPE_2__ {char* TH_EDCCA_HL_diff; char* IGI_Base; char* ForceEDCCA; char* AdapEn_RSSI; char* IGI_LowerBound; scalar_t__ TH_L2H_ini; } ;
struct hal_com_data {TYPE_1__ odmpriv; } ;
struct adapter {int dummy; } ;
typedef  TYPE_1__ DM_ODM_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,char*,char*,char*,char*,char*,char*,char*) ; 
 struct hal_com_data* FUNC1 (struct adapter*) ; 

void FUNC2(void *sel, struct adapter *adapter)
{
	struct hal_com_data *pHalData = FUNC1(adapter);
	DM_ODM_T *odm = &pHalData->odmpriv;

	FUNC0(sel, "%10s %16s %8s %10s %11s %14s\n",
			"TH_L2H_ini", "TH_EDCCA_HL_diff", "IGI_Base",
			"ForceEDCCA", "AdapEn_RSSI", "IGI_LowerBound");
	FUNC0(sel, "0x%-8x %-16d 0x%-6x %-10d %-11u %-14u\n",
			(u8)odm->TH_L2H_ini,
			odm->TH_EDCCA_HL_diff,
			odm->IGI_Base,
			odm->ForceEDCCA,
			odm->AdapEn_RSSI,
			odm->IGI_LowerBound
	);
}