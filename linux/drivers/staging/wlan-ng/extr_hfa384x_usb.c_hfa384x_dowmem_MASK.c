#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct usbctlx_cmd_completor {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  wmemresp; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; void* page; void* offset; void* frmlen; void* type; } ;
struct TYPE_5__ {TYPE_1__ wmemreq; } ;
struct hfa384x_usbctlx {int outbufsize; TYPE_3__ inbuf; int /*<<< orphan*/ * usercb_data; int /*<<< orphan*/ * usercb; int /*<<< orphan*/ * cmdcb; int /*<<< orphan*/  reapable; TYPE_2__ outbuf; } ;
struct hfa384x_cmdresult {int dummy; } ;
struct hfa384x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOWAIT ; 
 int ENOMEM ; 
 int HFA384x_USB_WMEMREQ ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct hfa384x*,struct hfa384x_usbctlx*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hfa384x*,struct hfa384x_usbctlx*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbctlx_cmd_completor*,int /*<<< orphan*/ *,struct hfa384x_cmdresult*) ; 
 int /*<<< orphan*/  FUNC4 (struct hfa384x_usbctlx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,unsigned int) ; 
 struct hfa384x_usbctlx* FUNC7 () ; 

__attribute__((used)) static int
FUNC8(struct hfa384x *hw,
	       u16 page,
	       u16 offset,
	       void *data,
	       unsigned int len)
{
	int result;
	struct hfa384x_usbctlx *ctlx;

	FUNC6("page=0x%04x offset=0x%04x len=%d\n", page, offset, len);

	ctlx = FUNC7();
	if (!ctlx) {
		result = -ENOMEM;
		goto done;
	}

	/* Initialize the command */
	ctlx->outbuf.wmemreq.type = FUNC0(HFA384x_USB_WMEMREQ);
	ctlx->outbuf.wmemreq.frmlen =
	    FUNC0(sizeof(ctlx->outbuf.wmemreq.offset) +
			sizeof(ctlx->outbuf.wmemreq.page) + len);
	ctlx->outbuf.wmemreq.offset = FUNC0(offset);
	ctlx->outbuf.wmemreq.page = FUNC0(page);
	FUNC5(ctlx->outbuf.wmemreq.data, data, len);

	ctlx->outbufsize = sizeof(ctlx->outbuf.wmemreq.type) +
	    sizeof(ctlx->outbuf.wmemreq.frmlen) +
	    sizeof(ctlx->outbuf.wmemreq.offset) +
	    sizeof(ctlx->outbuf.wmemreq.page) + len;

	ctlx->reapable = DOWAIT;
	ctlx->cmdcb = NULL;
	ctlx->usercb = NULL;
	ctlx->usercb_data = NULL;

	result = FUNC2(hw, ctlx);
	if (result != 0) {
		FUNC4(ctlx);
	} else {
		struct usbctlx_cmd_completor completor;
		struct hfa384x_cmdresult wmemresult;

		result = FUNC1(hw,
						       ctlx,
						       FUNC3
						       (&completor,
							&ctlx->inbuf.wmemresp,
							&wmemresult));
	}

done:
	return result;
}