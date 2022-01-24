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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct fcoe_rport {int /*<<< orphan*/  enode_mac; } ;
struct fcoe_ctlr {struct fc_lport* lp; } ;
struct fc_rport_priv {int /*<<< orphan*/  kref; } ;
struct fc_lport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  fc_rport_destroy ; 
 struct fc_rport_priv* FUNC0 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 struct fcoe_rport* FUNC1 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct fcoe_ctlr *fip, u32 port_id, u8 *mac)
{
	struct fc_lport *lport = fip->lp;
	struct fc_rport_priv *rdata;
	struct fcoe_rport *frport;
	int ret = -1;

	rdata = FUNC0(lport, port_id);
	if (rdata) {
		frport = FUNC1(rdata);
		FUNC3(mac, frport->enode_mac, ETH_ALEN);
		ret = 0;
		FUNC2(&rdata->kref, fc_rport_destroy);
	}
	return ret;
}