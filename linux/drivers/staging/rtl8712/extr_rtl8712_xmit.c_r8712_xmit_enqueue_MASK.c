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
struct xmit_frame {int /*<<< orphan*/ * pkt; } ;
struct _adapter {int dummy; } ;

/* Variables and functions */
 int _FAIL ; 
 int _SUCCESS ; 
 scalar_t__ FUNC0 (struct _adapter*,struct xmit_frame*) ; 

int FUNC1(struct _adapter *padapter, struct xmit_frame *pxmitframe)
{
	if (FUNC0(padapter, pxmitframe)) {
		pxmitframe->pkt = NULL;
		return _FAIL;
	}
	return _SUCCESS;
}