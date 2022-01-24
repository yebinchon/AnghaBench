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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct xmit_priv {int free_xmitbuf_cnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  beq_cnt; int /*<<< orphan*/  voq_cnt; int /*<<< orphan*/  viq_cnt; int /*<<< orphan*/  bkq_cnt; int /*<<< orphan*/  txirp_cnt; } ;
struct pkt_attrib {int priority; } ;
struct xmit_frame {int* bpending; int /*<<< orphan*/  mem_addr; struct urb** pxmit_urb; scalar_t__* sz; struct pkt_attrib attrib; } ;
struct usb_device {int dummy; } ;
struct urb {int /*<<< orphan*/  transfer_flags; } ;
struct intf_hdl {scalar_t__ adapter; } ;
struct dvobj_priv {scalar_t__ ishighspeed; struct usb_device* pusbdev; } ;
struct TYPE_2__ {scalar_t__ pnp_bstop_trx; } ;
struct _adapter {TYPE_1__ pwrctrlpriv; scalar_t__ surprise_removed; scalar_t__ driver_stopped; struct xmit_priv xmitpriv; struct dvobj_priv dvobjpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NR_XMITBUFF ; 
 int /*<<< orphan*/  URB_NO_INTERRUPT ; 
 int _FAIL ; 
 int _SUCCESS ; 
 unsigned int FUNC0 (struct dvobj_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,struct usb_device*,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct xmit_frame*) ; 
 int FUNC4 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_write_port_complete ; 

u32 FUNC5(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *wmem)
{
	unsigned long irqL;
	int i, status;
	unsigned int pipe;
	u32 ret, bwritezero;
	struct urb *purb = NULL;
	struct _adapter *padapter = (struct _adapter *)pintfhdl->adapter;
	struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
	struct xmit_frame *pxmitframe = (struct xmit_frame *)wmem;
	struct usb_device *pusbd = pdvobj->pusbdev;
	struct pkt_attrib *pattrib = &pxmitframe->attrib;

	if ((padapter->driver_stopped) || (padapter->surprise_removed) ||
	    (padapter->pwrctrlpriv.pnp_bstop_trx))
		return _FAIL;
	for (i = 0; i < 8; i++) {
		if (!pxmitframe->bpending[i]) {
			FUNC1(&pxmitpriv->lock, irqL);
			pxmitpriv->txirp_cnt++;
			pxmitframe->bpending[i]  = true;
			switch (pattrib->priority) {
			case 1:
			case 2:
				pxmitpriv->bkq_cnt++;
				break;
			case 4:
			case 5:
				pxmitpriv->viq_cnt++;
				break;
			case 6:
			case 7:
				pxmitpriv->voq_cnt++;
				break;
			case 0:
			case 3:
			default:
				pxmitpriv->beq_cnt++;
				break;
			}
			FUNC2(&pxmitpriv->lock, irqL);
			pxmitframe->sz[i] = (u16)cnt;
			purb = pxmitframe->pxmit_urb[i];
			break;
		}
	}
	bwritezero = false;
	if (pdvobj->ishighspeed) {
		if (cnt > 0 && cnt % 512 == 0)
			bwritezero = true;
	} else {
		if (cnt > 0 && cnt % 64 == 0)
			bwritezero = true;
	}
	/* translate DMA FIFO addr to pipehandle */
	pipe = FUNC0(pdvobj, addr);
	if (pxmitpriv->free_xmitbuf_cnt % NR_XMITBUFF == 0)
		purb->transfer_flags  &=  (~URB_NO_INTERRUPT);
	else
		purb->transfer_flags  |=  URB_NO_INTERRUPT;
	if (bwritezero)
		cnt += 8;
	FUNC3(purb, pusbd, pipe,
			  pxmitframe->mem_addr,
			  cnt, usb_write_port_complete,
			  pxmitframe); /* context is xmit_frame */
	status = FUNC4(purb, GFP_ATOMIC);
	if (!status)
		ret = _SUCCESS;
	else
		ret = _FAIL;
	return ret;
}