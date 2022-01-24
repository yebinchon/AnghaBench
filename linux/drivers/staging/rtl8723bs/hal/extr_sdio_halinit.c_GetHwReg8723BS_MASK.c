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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,int,int*) ; 
#define  HW_VAR_CPWM 129 
#define  HW_VAR_FW_PS_STATE 128 
 int SDIO_LOCAL_BASE ; 
 int SDIO_REG_HCPWM1_8723B ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int) ; 
 int FUNC2 (struct adapter*,int) ; 

__attribute__((used)) static void FUNC3(struct adapter *padapter, u8 variable, u8 *val)
{
	switch (variable) {
	case HW_VAR_CPWM:
		*val = FUNC2(padapter, SDIO_LOCAL_BASE | SDIO_REG_HCPWM1_8723B);
		break;

	case HW_VAR_FW_PS_STATE:
		{
			/* 3. read dword 0x88               driver read fw ps state */
			*((u16 *)val) = FUNC1(padapter, 0x88);
		}
		break;
	default:
		FUNC0(padapter, variable, val);
		break;
	}
}