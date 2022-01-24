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
struct TYPE_2__ {int /*<<< orphan*/  Adapter; } ;
typedef  TYPE_1__* PDM_ODM_T ;

/* Variables and functions */
 int /*<<< orphan*/  BIT1 ; 
 int /*<<< orphan*/  ODM_REG_NHM_TH9_TH10_11N ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC1(void *pDM_VOID)
{
	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;

	FUNC0(pDM_Odm->Adapter, ODM_REG_NHM_TH9_TH10_11N, BIT1, 0);
	FUNC0(pDM_Odm->Adapter, ODM_REG_NHM_TH9_TH10_11N, BIT1, 1);
}