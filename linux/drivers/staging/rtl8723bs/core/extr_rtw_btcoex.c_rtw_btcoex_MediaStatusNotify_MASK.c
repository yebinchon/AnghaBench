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
typedef  scalar_t__ u8 ;
struct adapter {int /*<<< orphan*/  mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_VAR_DL_RSVD_PAGE ; 
 scalar_t__ RT_MEDIA_CONNECT ; 
 int /*<<< orphan*/  WIFI_AP_STATE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct adapter *padapter, u8 mediaStatus)
{
	if ((mediaStatus == RT_MEDIA_CONNECT)
		&& (FUNC0(&padapter->mlmepriv, WIFI_AP_STATE) == true)) {
		FUNC2(padapter, HW_VAR_DL_RSVD_PAGE, NULL);
	}

	FUNC1(padapter, mediaStatus);
}