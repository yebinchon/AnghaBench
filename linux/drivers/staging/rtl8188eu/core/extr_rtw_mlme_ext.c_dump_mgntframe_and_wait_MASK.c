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
struct xmit_frame {struct xmit_buf* pxmitbuf; } ;
struct xmit_buf {struct submit_ctx* sctx; } ;
struct submit_ctx {int dummy; } ;
struct adapter {scalar_t__ bDriverStopped; scalar_t__ bSurpriseRemoved; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ _FAIL ; 
 scalar_t__ _SUCCESS ; 
 scalar_t__ FUNC0 (struct adapter*,struct xmit_frame*) ; 
 int /*<<< orphan*/  FUNC1 (struct submit_ctx*,int) ; 
 scalar_t__ FUNC2 (struct submit_ctx*) ; 

__attribute__((used)) static s32 FUNC3(struct adapter *padapter,
				   struct xmit_frame *pmgntframe,
				   int timeout_ms)
{
	s32 ret = _FAIL;
	struct xmit_buf *pxmitbuf = pmgntframe->pxmitbuf;
	struct submit_ctx sctx;

	if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
		return ret;

	FUNC1(&sctx, timeout_ms);
	pxmitbuf->sctx = &sctx;

	ret = FUNC0(padapter, pmgntframe);

	if (ret == _SUCCESS)
		ret = FUNC2(&sctx);

	return ret;
}