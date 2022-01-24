#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct sk_buff {void* protocol; scalar_t__ data; } ;
struct TYPE_11__ {int /*<<< orphan*/  vlan_disc_reqs; } ;
struct fnic_stats {TYPE_10__ vlan_stats; } ;
struct fcoe_ctlr {int /*<<< orphan*/  (* send ) (struct fcoe_ctlr*,struct sk_buff*) ;TYPE_7__* lp; int /*<<< orphan*/  ctl_src_addr; } ;
struct fnic {int /*<<< orphan*/  fip_timer; TYPE_1__* lport; int /*<<< orphan*/  (* set_vlan ) (struct fnic*,int /*<<< orphan*/ ) ;struct fnic_stats fnic_stats; struct fcoe_ctlr ctlr; } ;
struct TYPE_17__ {int fip_dlen; int /*<<< orphan*/  fip_dtype; } ;
struct TYPE_19__ {int /*<<< orphan*/  fd_wwn; TYPE_6__ fd_desc; } ;
struct TYPE_15__ {int fip_dlen; int /*<<< orphan*/  fip_dtype; } ;
struct TYPE_16__ {int /*<<< orphan*/  fd_mac; TYPE_4__ fd_desc; } ;
struct TYPE_20__ {TYPE_8__ wwnn; TYPE_5__ mac; } ;
struct TYPE_14__ {void* fip_dl_len; int /*<<< orphan*/  fip_subcode; void* fip_op; int /*<<< orphan*/  fip_ver; } ;
struct TYPE_13__ {void* h_proto; int /*<<< orphan*/ * h_dest; int /*<<< orphan*/ * h_source; } ;
struct fip_vlan {TYPE_9__ desc; TYPE_3__ fip; TYPE_2__ eth; } ;
struct TYPE_18__ {int /*<<< orphan*/  wwnn; } ;
struct TYPE_12__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int ETH_P_FIP ; 
 int /*<<< orphan*/  FCOE_CTLR_FIPVLAN_TOV ; 
 int FIP_BPW ; 
 int /*<<< orphan*/  FIP_DT_MAC ; 
 int /*<<< orphan*/  FIP_DT_NAME ; 
 int FIP_OP_VLAN ; 
 int /*<<< orphan*/  FIP_SC_VL_REQ ; 
 int /*<<< orphan*/  FIP_VER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC3 (int) ; 
 int /*<<< orphan*/  fcoe_all_fcfs ; 
 int /*<<< orphan*/  FUNC4 (struct fnic*) ; 
 void* FUNC5 (int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fip_vlan*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct fnic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct fcoe_ctlr*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC18(struct fnic *fnic)
{
	struct fcoe_ctlr *fip = &fnic->ctlr;
	struct fnic_stats *fnic_stats = &fnic->fnic_stats;
	struct sk_buff *skb;
	char *eth_fr;
	int fr_len;
	struct fip_vlan *vlan;
	u64 vlan_tov;

	FUNC4(fnic);
	fnic->set_vlan(fnic, 0);

	if (FUNC10())
		FUNC1(KERN_INFO, fnic->lport->host,
			  "Sending VLAN request...\n");

	skb = FUNC3(sizeof(struct fip_vlan));
	if (!skb)
		return;

	fr_len = sizeof(*vlan);
	eth_fr = (char *)skb->data;
	vlan = (struct fip_vlan *)eth_fr;

	FUNC7(vlan, 0, sizeof(*vlan));
	FUNC6(vlan->eth.h_source, fip->ctl_src_addr, ETH_ALEN);
	FUNC6(vlan->eth.h_dest, fcoe_all_fcfs, ETH_ALEN);
	vlan->eth.h_proto = FUNC5(ETH_P_FIP);

	vlan->fip.fip_ver = FUNC0(FIP_VER);
	vlan->fip.fip_op = FUNC5(FIP_OP_VLAN);
	vlan->fip.fip_subcode = FIP_SC_VL_REQ;
	vlan->fip.fip_dl_len = FUNC5(sizeof(vlan->desc) / FIP_BPW);

	vlan->desc.mac.fd_desc.fip_dtype = FIP_DT_MAC;
	vlan->desc.mac.fd_desc.fip_dlen = sizeof(vlan->desc.mac) / FIP_BPW;
	FUNC6(&vlan->desc.mac.fd_mac, fip->ctl_src_addr, ETH_ALEN);

	vlan->desc.wwnn.fd_desc.fip_dtype = FIP_DT_NAME;
	vlan->desc.wwnn.fd_desc.fip_dlen = sizeof(vlan->desc.wwnn) / FIP_BPW;
	FUNC11(fip->lp->wwnn, &vlan->desc.wwnn.fd_wwn);
	FUNC2(&fnic_stats->vlan_stats.vlan_disc_reqs);

	FUNC13(skb, sizeof(*vlan));
	skb->protocol = FUNC5(ETH_P_FIP);
	FUNC14(skb);
	FUNC15(skb);
	fip->send(fip, skb);

	/* set a timer so that we can retry if there no response */
	vlan_tov = jiffies + FUNC9(FCOE_CTLR_FIPVLAN_TOV);
	FUNC8(&fnic->fip_timer, FUNC12(vlan_tov));
}