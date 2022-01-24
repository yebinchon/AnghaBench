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
struct hal_com_data {int OutEpNumber; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 struct hal_com_data* FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 

__attribute__((used)) static void FUNC4(struct adapter *Adapter)
{
	struct hal_com_data *pHalData = FUNC0(Adapter);

	switch (pHalData->OutEpNumber) {
	case 1:
		FUNC1(Adapter);
		break;
	case 2:
		FUNC3(Adapter);
		break;
	case 3:
		FUNC2(Adapter);
		break;
	default:
		/* RT_ASSERT(false, ("Shall not reach here!\n")); */
		break;
	}


}