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
typedef  int /*<<< orphan*/  u8 ;
struct hal_com_data {int dummy; } ;
struct adapter {int hal_data_sz; int /*<<< orphan*/  HalData; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  _FAIL ; 
 int /*<<< orphan*/  _SUCCESS ; 
 scalar_t__ FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

u8 FUNC3(struct adapter *padapter)
{
	if (FUNC1(padapter)) {	/* if (padapter->isprimary) */
		padapter->hal_data_sz = sizeof(struct hal_com_data);
		padapter->HalData = FUNC2(padapter->hal_data_sz);
		if (!padapter->HalData) {
			FUNC0("cannot alloc memory for HAL DATA\n");
			return _FAIL;
		}
	}
	return _SUCCESS;
}