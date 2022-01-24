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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct fip_header {scalar_t__ fip_subcode; int /*<<< orphan*/  fip_dl_len; int /*<<< orphan*/  fip_ver; int /*<<< orphan*/  fip_op; } ;
struct fcoe_ctlr {scalar_t__ mode; int state; int fip_resp; int /*<<< orphan*/  ctlr_mutex; scalar_t__ map_dest; int /*<<< orphan*/  ctl_src_addr; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; } ;
typedef  enum fip_state { ____Placeholder_fip_state } fip_state ;

/* Variables and functions */
 int FIP_BPW ; 
 scalar_t__ FIP_MODE_VN2VN ; 
 scalar_t__ FIP_OP_CTRL ; 
 scalar_t__ FIP_OP_DISC ; 
 scalar_t__ FIP_OP_LS ; 
 scalar_t__ FIP_OP_VLAN ; 
 scalar_t__ FIP_OP_VN2VN ; 
 scalar_t__ FIP_SC_ADV ; 
 scalar_t__ FIP_SC_CLR_VLINK ; 
 int FIP_ST_AUTO ; 
 int FIP_ST_ENABLED ; 
 int FIP_ST_VNMP_CLAIM ; 
 int FIP_ST_VNMP_UP ; 
 scalar_t__ FIP_VER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fcoe_ctlr*,char*) ; 
 struct ethhdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fcoe_all_enode ; 
 int /*<<< orphan*/  fcoe_all_p2p ; 
 int /*<<< orphan*/  fcoe_all_vn2vn ; 
 int /*<<< orphan*/  FUNC4 (struct fcoe_ctlr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct fcoe_ctlr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct fcoe_ctlr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct fcoe_ctlr*,int) ; 
 int FUNC8 (struct fcoe_ctlr*,struct sk_buff*) ; 
 int FUNC9 (struct fcoe_ctlr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC15(struct fcoe_ctlr *fip, struct sk_buff *skb)
{
	struct fip_header *fiph;
	struct ethhdr *eh;
	enum fip_state state;
	bool fip_vlan_resp = false;
	u16 op;
	u8 sub;

	if (FUNC14(skb))
		goto drop;
	if (skb->len < sizeof(*fiph))
		goto drop;
	eh = FUNC2(skb);
	if (fip->mode == FIP_MODE_VN2VN) {
		if (!FUNC3(eh->h_dest, fip->ctl_src_addr) &&
		    !FUNC3(eh->h_dest, fcoe_all_vn2vn) &&
		    !FUNC3(eh->h_dest, fcoe_all_p2p))
			goto drop;
	} else if (!FUNC3(eh->h_dest, fip->ctl_src_addr) &&
		   !FUNC3(eh->h_dest, fcoe_all_enode))
		goto drop;
	fiph = (struct fip_header *)skb->data;
	op = FUNC13(fiph->fip_op);
	sub = fiph->fip_subcode;

	if (FUNC0(fiph->fip_ver) != FIP_VER)
		goto drop;
	if (FUNC13(fiph->fip_dl_len) * FIP_BPW + sizeof(*fiph) > skb->len)
		goto drop;

	FUNC11(&fip->ctlr_mutex);
	state = fip->state;
	if (state == FIP_ST_AUTO) {
		fip->map_dest = 0;
		FUNC7(fip, FIP_ST_ENABLED);
		state = FIP_ST_ENABLED;
		FUNC1(fip, "Using FIP mode\n");
	}
	fip_vlan_resp = fip->fip_resp;
	FUNC12(&fip->ctlr_mutex);

	if (fip->mode == FIP_MODE_VN2VN && op == FIP_OP_VN2VN)
		return FUNC9(fip, skb);

	if (fip_vlan_resp && op == FIP_OP_VLAN) {
		FUNC1(fip, "fip vlan discovery\n");
		return FUNC8(fip, skb);
	}

	if (state != FIP_ST_ENABLED && state != FIP_ST_VNMP_UP &&
	    state != FIP_ST_VNMP_CLAIM)
		goto drop;

	if (op == FIP_OP_LS) {
		FUNC6(fip, skb);	/* consumes skb */
		return 0;
	}

	if (state != FIP_ST_ENABLED)
		goto drop;

	if (op == FIP_OP_DISC && sub == FIP_SC_ADV)
		FUNC4(fip, skb);
	else if (op == FIP_OP_CTRL && sub == FIP_SC_CLR_VLINK)
		FUNC5(fip, skb);
	FUNC10(skb);
	return 0;
drop:
	FUNC10(skb);
	return -1;
}