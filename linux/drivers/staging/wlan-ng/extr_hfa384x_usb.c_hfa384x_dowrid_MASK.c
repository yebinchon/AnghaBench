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
struct TYPE_6__ {int /*<<< orphan*/  wridresp; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; void* rid; void* frmlen; void* type; } ;
struct TYPE_5__ {TYPE_1__ wridreq; } ;
struct hfa384x_usbctlx {int outbufsize; int reapable; TYPE_3__ inbuf; void* usercb_data; int /*<<< orphan*/  usercb; int /*<<< orphan*/  cmdcb; TYPE_2__ outbuf; } ;
struct hfa384x_cmdresult {int dummy; } ;
struct hfa384x {int dummy; } ;
typedef  enum cmd_mode { ____Placeholder_cmd_mode } cmd_mode ;
typedef  int /*<<< orphan*/  ctlx_usercb_t ;
typedef  int /*<<< orphan*/  ctlx_cmdcb_t ;

/* Variables and functions */
 int DOWAIT ; 
 int ENOMEM ; 
 int HFA384x_USB_WRIDREQ ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct hfa384x*,struct hfa384x_usbctlx*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hfa384x*,struct hfa384x_usbctlx*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbctlx_cmd_completor*,int /*<<< orphan*/ *,struct hfa384x_cmdresult*) ; 
 int /*<<< orphan*/  FUNC4 (struct hfa384x_usbctlx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,unsigned int) ; 
 struct hfa384x_usbctlx* FUNC6 () ; 

__attribute__((used)) static int
FUNC7(struct hfa384x *hw,
	       enum cmd_mode mode,
	       u16 rid,
	       void *riddata,
	       unsigned int riddatalen,
	       ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data)
{
	int result;
	struct hfa384x_usbctlx *ctlx;

	ctlx = FUNC6();
	if (!ctlx) {
		result = -ENOMEM;
		goto done;
	}

	/* Initialize the command */
	ctlx->outbuf.wridreq.type = FUNC0(HFA384x_USB_WRIDREQ);
	ctlx->outbuf.wridreq.frmlen = FUNC0((sizeof
						   (ctlx->outbuf.wridreq.rid) +
						   riddatalen + 1) / 2);
	ctlx->outbuf.wridreq.rid = FUNC0(rid);
	FUNC5(ctlx->outbuf.wridreq.data, riddata, riddatalen);

	ctlx->outbufsize = sizeof(ctlx->outbuf.wridreq.type) +
	    sizeof(ctlx->outbuf.wridreq.frmlen) +
	    sizeof(ctlx->outbuf.wridreq.rid) + riddatalen;

	ctlx->reapable = mode;
	ctlx->cmdcb = cmdcb;
	ctlx->usercb = usercb;
	ctlx->usercb_data = usercb_data;

	/* Submit the CTLX */
	result = FUNC2(hw, ctlx);
	if (result != 0) {
		FUNC4(ctlx);
	} else if (mode == DOWAIT) {
		struct usbctlx_cmd_completor completor;
		struct hfa384x_cmdresult wridresult;

		result = FUNC1(hw,
						       ctlx,
						       FUNC3
						       (&completor,
							&ctlx->inbuf.wridresp,
							&wridresult));
	}

done:
	return result;
}