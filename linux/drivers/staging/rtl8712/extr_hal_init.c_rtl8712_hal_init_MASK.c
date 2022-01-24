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
typedef  scalar_t__ uint ;
typedef  int u32 ;
struct TYPE_2__ {int* mac_addr; } ;
struct _adapter {TYPE_1__ eeprompriv; int /*<<< orphan*/  pnetdev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int MACID ; 
 int RCR ; 
 scalar_t__ _FAIL ; 
 scalar_t__ _SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct _adapter*,int) ; 
 int FUNC3 (struct _adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct _adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct _adapter*,int,int) ; 
 scalar_t__ FUNC6 (struct _adapter*) ; 

uint FUNC7(struct _adapter *padapter)
{
	u32 val32;
	int i;

	/* r8712 firmware download */
	if (FUNC6(padapter) != _SUCCESS)
		return _FAIL;

	FUNC1(padapter->pnetdev, "1 RCR=0x%x\n",
		    FUNC2(padapter, RCR));
	val32 = FUNC2(padapter, RCR);
	FUNC4(padapter, RCR, (val32 | FUNC0(26))); /* Enable RX TCP
							  * Checksum offload
							  */
	FUNC1(padapter->pnetdev, "2 RCR=0x%x\n",
		    FUNC2(padapter, RCR));
	val32 = FUNC2(padapter, RCR);
	FUNC4(padapter, RCR, (val32 | FUNC0(25))); /* Append PHY status */
	val32 = FUNC2(padapter, 0x10250040);
	FUNC4(padapter,  0x10250040, (val32 & 0x00FFFFFF));
	/* for usb rx aggregation */
	FUNC5(padapter, 0x102500B5, FUNC3(padapter, 0x102500B5) |
	       FUNC0(0)); /* page = 128bytes */
	FUNC5(padapter, 0x102500BD, FUNC3(padapter, 0x102500BD) |
	       FUNC0(7)); /* enable usb rx aggregation */
	FUNC5(padapter, 0x102500D9, 1); /* TH=1 => means that invalidate
						*  usb rx aggregation
						*/
	FUNC5(padapter, 0x1025FE5B, 0x04); /* 1.7ms/4 */
	/* Fix the RX FIFO issue(USB error) */
	FUNC5(padapter, 0x1025fe5C, FUNC3(padapter, 0x1025fe5C)
		     | FUNC0(7));
	for (i = 0; i < 6; i++)
		padapter->eeprompriv.mac_addr[i] = FUNC3(padapter,
							       MACID + i);
	return _SUCCESS;
}