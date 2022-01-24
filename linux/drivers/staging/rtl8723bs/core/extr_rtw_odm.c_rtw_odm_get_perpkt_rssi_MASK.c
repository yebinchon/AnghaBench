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
struct TYPE_2__ {int /*<<< orphan*/  RSSI_B; int /*<<< orphan*/  RSSI_A; int /*<<< orphan*/  RxRate; } ;
struct hal_com_data {TYPE_1__ odmpriv; } ;
struct adapter {int dummy; } ;
typedef  TYPE_1__ DM_ODM_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hal_com_data* FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(void *sel, struct adapter *adapter)
{
	struct hal_com_data *hal_data = FUNC1(adapter);
	DM_ODM_T *odm = &hal_data->odmpriv;

	FUNC0(sel, "RxRate = %s, RSSI_A = %d(%%), RSSI_B = %d(%%)\n",
			FUNC2(odm->RxRate), odm->RSSI_A, odm->RSSI_B);
}