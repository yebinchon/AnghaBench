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
struct usbctlx_rmem_completor {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  rmemresp; } ;
struct TYPE_4__ {void* page; void* offset; void* frmlen; void* type; } ;
struct TYPE_5__ {TYPE_1__ rmemreq; } ;
struct hfa384x_usbctlx {int outbufsize; TYPE_3__ inbuf; int /*<<< orphan*/ * usercb_data; int /*<<< orphan*/ * usercb; int /*<<< orphan*/ * cmdcb; int /*<<< orphan*/  reapable; TYPE_2__ outbuf; } ;
struct hfa384x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOWAIT ; 
 int ENOMEM ; 
 int HFA384x_USB_RMEMREQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (struct hfa384x*,struct hfa384x_usbctlx*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hfa384x*,struct hfa384x_usbctlx*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbctlx_rmem_completor*,int /*<<< orphan*/ *,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct hfa384x_usbctlx*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
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

	ctlx = FUNC7();
	if (!ctlx) {
		result = -ENOMEM;
		goto done;
	}

	/* Initialize the command */
	ctlx->outbuf.rmemreq.type = FUNC1(HFA384x_USB_RMEMREQ);
	ctlx->outbuf.rmemreq.frmlen =
	    FUNC1(sizeof(ctlx->outbuf.rmemreq.offset) +
			sizeof(ctlx->outbuf.rmemreq.page) + len);
	ctlx->outbuf.rmemreq.offset = FUNC1(offset);
	ctlx->outbuf.rmemreq.page = FUNC1(page);

	ctlx->outbufsize = sizeof(ctlx->outbuf.rmemreq);

	FUNC6("type=0x%04x frmlen=%d offset=0x%04x page=0x%04x\n",
		 ctlx->outbuf.rmemreq.type,
		 ctlx->outbuf.rmemreq.frmlen,
		 ctlx->outbuf.rmemreq.offset, ctlx->outbuf.rmemreq.page);

	FUNC6("pktsize=%zd\n", FUNC0(sizeof(ctlx->outbuf.rmemreq)));

	ctlx->reapable = DOWAIT;
	ctlx->cmdcb = NULL;
	ctlx->usercb = NULL;
	ctlx->usercb_data = NULL;

	result = FUNC3(hw, ctlx);
	if (result != 0) {
		FUNC5(ctlx);
	} else {
		struct usbctlx_rmem_completor completor;

		result =
		    FUNC2(hw, ctlx,
						  FUNC4
						  (&completor,
						   &ctlx->inbuf.rmemresp, data,
						   len));
	}

done:
	return result;
}