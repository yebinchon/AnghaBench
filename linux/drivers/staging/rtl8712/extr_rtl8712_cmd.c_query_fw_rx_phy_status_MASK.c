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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ fw_rssi; } ;
struct _adapter {TYPE_1__ recvpriv; int /*<<< orphan*/  mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOCMD_CTRL_REG ; 
 int /*<<< orphan*/  IOCMD_DATA_REG ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct _adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct _adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct _adapter *padapter)
{
	u32 val32 = 0;
	int pollingcnts = 50;

	if (FUNC0(&padapter->mlmepriv, _FW_LINKED)) {
		FUNC4(padapter, IOCMD_CTRL_REG, 0xf4000001);
		FUNC1(100);
		/* Wait FW complete IO Cmd */
		while ((FUNC2(padapter, IOCMD_CTRL_REG)) &&
		       (pollingcnts > 0)) {
			pollingcnts--;
			FUNC1(20);
		}
		if (pollingcnts != 0)
			val32 = FUNC2(padapter, IOCMD_DATA_REG);
		else /* time out */
			val32 = 0;
		val32 >>= 4;
		padapter->recvpriv.fw_rssi =
			 (u8)FUNC3(val32);
	}
}