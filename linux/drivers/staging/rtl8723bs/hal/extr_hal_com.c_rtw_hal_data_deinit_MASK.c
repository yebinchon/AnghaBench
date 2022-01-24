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
struct adapter {scalar_t__ hal_data_sz; int /*<<< orphan*/ * HalData; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct adapter *padapter)
{
	if (FUNC0(padapter)) {	/* if (padapter->isprimary) */
		if (padapter->HalData) {
			FUNC1(padapter);
			FUNC2(padapter->HalData);
			padapter->HalData = NULL;
			padapter->hal_data_sz = 0;
		}
	}
}