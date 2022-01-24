#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct TYPE_4__ {int /*<<< orphan*/  bCCKinCH14; } ;
struct TYPE_5__ {int /*<<< orphan*/  Adapter; TYPE_1__ RFCalibrateInfo; } ;
typedef  TYPE_2__* PDM_ODM_T ;

/* Variables and functions */
 int /*<<< orphan*/ ** CCKSwingTable_Ch14_New ; 
 int /*<<< orphan*/ ** CCKSwingTable_Ch1_Ch13_New ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(PDM_ODM_T pDM_Odm, u8 CCKSwingIndex)
{
	if (!pDM_Odm->RFCalibrateInfo.bCCKinCH14) {
		FUNC0(pDM_Odm->Adapter, 0xa22, CCKSwingTable_Ch1_Ch13_New[CCKSwingIndex][0]);
		FUNC0(pDM_Odm->Adapter, 0xa23, CCKSwingTable_Ch1_Ch13_New[CCKSwingIndex][1]);
		FUNC0(pDM_Odm->Adapter, 0xa24, CCKSwingTable_Ch1_Ch13_New[CCKSwingIndex][2]);
		FUNC0(pDM_Odm->Adapter, 0xa25, CCKSwingTable_Ch1_Ch13_New[CCKSwingIndex][3]);
		FUNC0(pDM_Odm->Adapter, 0xa26, CCKSwingTable_Ch1_Ch13_New[CCKSwingIndex][4]);
		FUNC0(pDM_Odm->Adapter, 0xa27, CCKSwingTable_Ch1_Ch13_New[CCKSwingIndex][5]);
		FUNC0(pDM_Odm->Adapter, 0xa28, CCKSwingTable_Ch1_Ch13_New[CCKSwingIndex][6]);
		FUNC0(pDM_Odm->Adapter, 0xa29, CCKSwingTable_Ch1_Ch13_New[CCKSwingIndex][7]);
	} else {
		FUNC0(pDM_Odm->Adapter, 0xa22, CCKSwingTable_Ch14_New[CCKSwingIndex][0]);
		FUNC0(pDM_Odm->Adapter, 0xa23, CCKSwingTable_Ch14_New[CCKSwingIndex][1]);
		FUNC0(pDM_Odm->Adapter, 0xa24, CCKSwingTable_Ch14_New[CCKSwingIndex][2]);
		FUNC0(pDM_Odm->Adapter, 0xa25, CCKSwingTable_Ch14_New[CCKSwingIndex][3]);
		FUNC0(pDM_Odm->Adapter, 0xa26, CCKSwingTable_Ch14_New[CCKSwingIndex][4]);
		FUNC0(pDM_Odm->Adapter, 0xa27, CCKSwingTable_Ch14_New[CCKSwingIndex][5]);
		FUNC0(pDM_Odm->Adapter, 0xa28, CCKSwingTable_Ch14_New[CCKSwingIndex][6]);
		FUNC0(pDM_Odm->Adapter, 0xa29, CCKSwingTable_Ch14_New[CCKSwingIndex][7]);
	}
}