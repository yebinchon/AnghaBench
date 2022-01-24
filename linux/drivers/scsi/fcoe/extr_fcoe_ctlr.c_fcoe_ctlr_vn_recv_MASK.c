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
struct sk_buff {scalar_t__ data; } ;
struct fip_header {int fip_subcode; } ;
struct fcoe_rport {int dummy; } ;
struct fcoe_ctlr {int /*<<< orphan*/  ctlr_mutex; TYPE_1__* lp; } ;
typedef  enum fip_vn2vn_subcode { ____Placeholder_fip_vn2vn_subcode } fip_vn2vn_subcode ;
struct TYPE_2__ {int vlan; } ;

/* Variables and functions */
 int EAGAIN ; 
#define  FIP_SC_VN_BEACON 132 
#define  FIP_SC_VN_CLAIM_NOTIFY 131 
#define  FIP_SC_VN_CLAIM_REP 130 
#define  FIP_SC_VN_PROBE_REP 129 
#define  FIP_SC_VN_PROBE_REQ 128 
 int /*<<< orphan*/  FUNC0 (struct fcoe_ctlr*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct fcoe_ctlr*,struct fcoe_rport*) ; 
 int /*<<< orphan*/  FUNC2 (struct fcoe_ctlr*,struct fcoe_rport*) ; 
 int /*<<< orphan*/  FUNC3 (struct fcoe_ctlr*,struct fcoe_rport*) ; 
 int FUNC4 (struct fcoe_ctlr*,struct sk_buff*,struct fcoe_rport*) ; 
 int /*<<< orphan*/  FUNC5 (struct fcoe_ctlr*,struct fcoe_rport*) ; 
 int /*<<< orphan*/  FUNC6 (struct fcoe_ctlr*,struct fcoe_rport*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC11(struct fcoe_ctlr *fip, struct sk_buff *skb)
{
	struct fip_header *fiph;
	enum fip_vn2vn_subcode sub;
	struct fcoe_rport frport = { };
	int rc, vlan_id = 0;

	fiph = (struct fip_header *)skb->data;
	sub = fiph->fip_subcode;

	if (fip->lp->vlan)
		vlan_id = FUNC10(skb);

	if (vlan_id && vlan_id != fip->lp->vlan) {
		FUNC0(fip, "vn_recv drop frame sub %x vlan %d\n",
				sub, vlan_id);
		rc = -EAGAIN;
		goto drop;
	}

	rc = FUNC4(fip, skb, &frport);
	if (rc) {
		FUNC0(fip, "vn_recv vn_parse error %d\n", rc);
		goto drop;
	}

	FUNC8(&fip->ctlr_mutex);
	switch (sub) {
	case FIP_SC_VN_PROBE_REQ:
		FUNC6(fip, &frport);
		break;
	case FIP_SC_VN_PROBE_REP:
		FUNC5(fip, &frport);
		break;
	case FIP_SC_VN_CLAIM_NOTIFY:
		FUNC2(fip, &frport);
		break;
	case FIP_SC_VN_CLAIM_REP:
		FUNC3(fip, &frport);
		break;
	case FIP_SC_VN_BEACON:
		FUNC1(fip, &frport);
		break;
	default:
		FUNC0(fip, "vn_recv unknown subcode %d\n", sub);
		rc = -1;
		break;
	}
	FUNC9(&fip->ctlr_mutex);
drop:
	FUNC7(skb);
	return rc;
}