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
struct hal_com_data {scalar_t__ rf_type; int NumTotalRFPath; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 struct hal_com_data* FUNC0 (struct adapter*) ; 
 scalar_t__ RF_1T1R ; 
 int FUNC1 (struct adapter*) ; 

int FUNC2(struct adapter *Adapter)
{
	struct hal_com_data *pHalData = FUNC0(Adapter);

	/*  */
	/*  Initialize general global value */
	/*  */
	/*  TODO: Extend RF_PATH_C and RF_PATH_D in the future */
	if (pHalData->rf_type == RF_1T1R)
		pHalData->NumTotalRFPath = 1;
	else
		pHalData->NumTotalRFPath = 2;

	/*  */
	/*  Config BB and RF */
	/*  */
	return FUNC1(Adapter);

}