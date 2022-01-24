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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct TYPE_6__ {TYPE_1__* sel_fcf; } ;
struct qedf_ctx {TYPE_3__ ctlr; TYPE_2__* lport; int /*<<< orphan*/  dbg_ctx; int /*<<< orphan*/  data_src_addr; int /*<<< orphan*/  wwpn; int /*<<< orphan*/  mac; } ;
struct fip_wwn_desc {int /*<<< orphan*/  fd_wwn; } ;
struct fip_vn_desc {int /*<<< orphan*/  fd_mac; int /*<<< orphan*/  fd_fc_id; int /*<<< orphan*/  fd_wwpn; } ;
struct fip_mac_desc {int /*<<< orphan*/  fd_mac; } ;
struct fip_header {scalar_t__ fip_subcode; int /*<<< orphan*/  fip_dl_len; int /*<<< orphan*/  fip_op; } ;
struct fip_desc {size_t fip_dlen; int fip_dtype; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; } ;
struct TYPE_5__ {int /*<<< orphan*/  port_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  switch_name; int /*<<< orphan*/  fcf_mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 size_t FIP_BPW ; 
#define  FIP_DT_MAC 130 
#define  FIP_DT_NAME 129 
#define  FIP_DT_VN_ID 128 
 int /*<<< orphan*/  FIP_OP_CTRL ; 
 int /*<<< orphan*/  FIP_OP_VLAN ; 
 scalar_t__ FIP_SC_CLR_VLINK ; 
 scalar_t__ FIP_SC_VL_NOTE ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  QEDF_LOG_DISC ; 
 int /*<<< orphan*/  QEDF_LOG_LL2 ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fcoe_all_enode ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ qedf_dump_frames ; 
 int /*<<< orphan*/  FUNC11 (struct qedf_ctx*,struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 

void FUNC13(struct qedf_ctx *qedf, struct sk_buff *skb)
{
	struct ethhdr *eth_hdr;
	struct fip_header *fiph;
	struct fip_desc *desc;
	struct fip_mac_desc *mp;
	struct fip_wwn_desc *wp;
	struct fip_vn_desc *vp;
	size_t rlen, dlen;
	u16 op;
	u8 sub;
	bool fcf_valid = false;
	/* Default is to handle CVL regardless of fabric id descriptor */
	bool fabric_id_valid = true;
	bool fc_wwpn_valid = false;
	u64 switch_name;
	u16 vlan = 0;

	eth_hdr = (struct ethhdr *)FUNC12(skb);
	fiph = (struct fip_header *) ((void *)skb->data + 2 * ETH_ALEN + 2);
	op = FUNC8(fiph->fip_op);
	sub = fiph->fip_subcode;

	FUNC1(&qedf->dbg_ctx, QEDF_LOG_LL2,
		  "FIP frame received: skb=%p fiph=%p source=%pM destn=%pM op=%x sub=%x vlan=%04x",
		  skb, fiph, eth_hdr->h_source, eth_hdr->h_dest, op,
		  sub, vlan);
	if (qedf_dump_frames)
		FUNC9(KERN_WARNING, "fip ", DUMP_PREFIX_OFFSET, 16, 1,
		    skb->data, skb->len, false);

	if (!FUNC3(eth_hdr->h_dest, qedf->mac) &&
	    !FUNC3(eth_hdr->h_dest, fcoe_all_enode) &&
		!FUNC3(eth_hdr->h_dest, qedf->data_src_addr)) {
		FUNC1(&qedf->dbg_ctx, QEDF_LOG_LL2,
			  "Dropping FIP type 0x%x pkt due to destination MAC mismatch dest_mac=%pM ctlr.dest_addr=%pM data_src_addr=%pM.\n",
			  op, eth_hdr->h_dest, qedf->mac,
			  qedf->data_src_addr);
		FUNC6(skb);
		return;
	}

	/* Handle FIP VLAN resp in the driver */
	if (op == FIP_OP_VLAN && sub == FIP_SC_VL_NOTE) {
		FUNC11(qedf, skb);
		FUNC6(skb);
	} else if (op == FIP_OP_CTRL && sub == FIP_SC_CLR_VLINK) {
		FUNC1(&(qedf->dbg_ctx), QEDF_LOG_DISC, "Clear virtual "
			   "link received.\n");

		/* Check that an FCF has been selected by fcoe */
		if (qedf->ctlr.sel_fcf == NULL) {
			FUNC1(&(qedf->dbg_ctx), QEDF_LOG_DISC,
			    "Dropping CVL since FCF has not been selected "
			    "yet.");
			FUNC6(skb);
			return;
		}

		/*
		 * We need to loop through the CVL descriptors to determine
		 * if we want to reset the fcoe link
		 */
		rlen = FUNC8(fiph->fip_dl_len) * FIP_BPW;
		desc = (struct fip_desc *)(fiph + 1);
		while (rlen >= sizeof(*desc)) {
			dlen = desc->fip_dlen * FIP_BPW;
			switch (desc->fip_dtype) {
			case FIP_DT_MAC:
				mp = (struct fip_mac_desc *)desc;
				FUNC1(&qedf->dbg_ctx, QEDF_LOG_DISC,
					  "Switch fd_mac=%pM.\n", mp->fd_mac);
				if (FUNC3(mp->fd_mac,
				    qedf->ctlr.sel_fcf->fcf_mac))
					fcf_valid = true;
				break;
			case FIP_DT_NAME:
				wp = (struct fip_wwn_desc *)desc;
				switch_name = FUNC5(&wp->fd_wwn);
				FUNC1(&qedf->dbg_ctx, QEDF_LOG_DISC,
					  "Switch fd_wwn=%016llx fcf_switch_name=%016llx.\n",
					  switch_name,
					  qedf->ctlr.sel_fcf->switch_name);
				if (switch_name ==
				    qedf->ctlr.sel_fcf->switch_name)
					fc_wwpn_valid = true;
				break;
			case FIP_DT_VN_ID:
				fabric_id_valid = false;
				vp = (struct fip_vn_desc *)desc;

				FUNC0(&qedf->dbg_ctx,
					 "CVL vx_port fd_fc_id=0x%x fd_mac=%pM fd_wwpn=%016llx.\n",
					 FUNC7(vp->fd_fc_id), vp->fd_mac,
					 FUNC5(&vp->fd_wwpn));
				/* Check for vx_port wwpn OR Check vx_port
				 * fabric ID OR Check vx_port MAC
				 */
				if ((FUNC5(&vp->fd_wwpn) ==
					qedf->wwpn) ||
				   (FUNC7(vp->fd_fc_id) ==
					qedf->lport->port_id) ||
				   (FUNC3(vp->fd_mac,
					qedf->data_src_addr))) {
					fabric_id_valid = true;
				}
				break;
			default:
				/* Ignore anything else */
				break;
			}
			desc = (struct fip_desc *)((char *)desc + dlen);
			rlen -= dlen;
		}

		FUNC1(&qedf->dbg_ctx, QEDF_LOG_DISC,
			  "fcf_valid=%d fabric_id_valid=%d fc_wwpn_valid=%d.\n",
			  fcf_valid, fabric_id_valid, fc_wwpn_valid);
		if (fcf_valid && fabric_id_valid && fc_wwpn_valid)
			FUNC10(qedf->lport);
		FUNC6(skb);
	} else {
		/* Everything else is handled by libfcoe */
		FUNC2(skb, ETH_HLEN);
		FUNC4(&qedf->ctlr, skb);
	}
}