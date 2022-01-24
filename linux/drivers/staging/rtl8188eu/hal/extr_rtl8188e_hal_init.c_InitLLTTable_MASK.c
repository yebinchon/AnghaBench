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
typedef  int u32 ;
struct adapter {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int LAST_ENTRY_OF_TX_PKT_BUFFER ; 
 scalar_t__ _FAIL ; 
 scalar_t__ FUNC0 (struct adapter*,int,int) ; 
 scalar_t__ _SUCCESS ; 
 scalar_t__ FUNC1 (struct adapter*,int) ; 
 scalar_t__ FUNC2 (struct adapter*) ; 

s32 FUNC3(struct adapter *padapter, u8 txpktbuf_bndy)
{
	s32	status = _FAIL;
	u32	i;
	u32	Last_Entry_Of_TxPktBuf = LAST_ENTRY_OF_TX_PKT_BUFFER;/*  176, 22k */

	if (FUNC2(padapter)) {
		status = FUNC1(padapter, txpktbuf_bndy);
	} else {
		for (i = 0; i < (txpktbuf_bndy - 1); i++) {
			status = FUNC0(padapter, i, i + 1);
			if (status != _SUCCESS)
				return status;
		}

		/*  end of list */
		status = FUNC0(padapter, (txpktbuf_bndy - 1), 0xFF);
		if (status != _SUCCESS)
			return status;

		/*  Make the other pages as ring buffer */
		/*  This ring buffer is used as beacon buffer if we config this MAC as two MAC transfer. */
		/*  Otherwise used as local loopback buffer. */
		for (i = txpktbuf_bndy; i < Last_Entry_Of_TxPktBuf; i++) {
			status = FUNC0(padapter, i, (i + 1));
			if (status != _SUCCESS)
				return status;
		}

		/*  Let last entry point to the start entry of ring buffer */
		status = FUNC0(padapter, Last_Entry_Of_TxPktBuf, txpktbuf_bndy);
		if (status != _SUCCESS)
			return status;
	}

	return status;
}