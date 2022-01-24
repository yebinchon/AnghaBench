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
typedef  int u64 ;
struct fc_seq {int dummy; } ;
struct TYPE_2__ {int port_name; int /*<<< orphan*/  port_id; } ;
struct fc_rport_priv {int /*<<< orphan*/  kref; int /*<<< orphan*/  rp_mutex; int /*<<< orphan*/  disc_id; TYPE_1__ ids; struct fc_lport* local_port; } ;
struct fc_ns_gid_pn {int /*<<< orphan*/  fn_wwpn; } ;
struct fc_disc {int /*<<< orphan*/  disc_mutex; int /*<<< orphan*/  disc_id; } ;
struct fc_lport {struct fc_disc disc; } ;
struct fc_frame_header {int dummy; } ;
struct fc_frame {int dummy; } ;
struct fc_ct_hdr {int /*<<< orphan*/  ct_cmd; int /*<<< orphan*/  ct_explan; int /*<<< orphan*/  ct_reason; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_disc*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FC_EX_CLOSED ; 
 scalar_t__ FC_FS_ACC ; 
 scalar_t__ FC_FS_RJT ; 
 scalar_t__ FUNC1 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_disc*) ; 
 struct fc_ct_hdr* FUNC4 (struct fc_frame*,int) ; 
 struct fc_rport_priv* FUNC5 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fc_rport_destroy ; 
 int /*<<< orphan*/  FUNC6 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_rport_priv*) ; 
 int FUNC8 (struct fc_frame*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct fc_seq *sp, struct fc_frame *fp,
				void *rdata_arg)
{
	struct fc_rport_priv *rdata = rdata_arg;
	struct fc_rport_priv *new_rdata;
	struct fc_lport *lport;
	struct fc_disc *disc;
	struct fc_ct_hdr *cp;
	struct fc_ns_gid_pn *pn;
	u64 port_name;

	lport = rdata->local_port;
	disc = &lport->disc;

	if (FUNC2(fp) == -FC_EX_CLOSED)
		goto out;
	if (FUNC1(fp))
		goto redisc;

	cp = FUNC4(fp, sizeof(*cp));
	if (!cp)
		goto redisc;
	if (FUNC13(cp->ct_cmd) == FC_FS_ACC) {
		if (FUNC8(fp) < sizeof(struct fc_frame_header) +
		    sizeof(*cp) + sizeof(*pn))
			goto redisc;
		pn = (struct fc_ns_gid_pn *)(cp + 1);
		port_name = FUNC9(&pn->fn_wwpn);
		FUNC11(&rdata->rp_mutex);
		if (rdata->ids.port_name == -1)
			rdata->ids.port_name = port_name;
		else if (rdata->ids.port_name != port_name) {
			FUNC0(disc, "GPN_ID accepted.  WWPN changed. "
				    "Port-id %6.6x wwpn %16.16llx\n",
				    rdata->ids.port_id, port_name);
			FUNC12(&rdata->rp_mutex);
			FUNC7(rdata);
			FUNC11(&lport->disc.disc_mutex);
			new_rdata = FUNC5(lport, rdata->ids.port_id);
			FUNC12(&lport->disc.disc_mutex);
			if (new_rdata) {
				new_rdata->disc_id = disc->disc_id;
				FUNC6(new_rdata);
			}
			goto out;
		}
		rdata->disc_id = disc->disc_id;
		FUNC12(&rdata->rp_mutex);
		FUNC6(rdata);
	} else if (FUNC13(cp->ct_cmd) == FC_FS_RJT) {
		FUNC0(disc, "GPN_ID rejected reason %x exp %x\n",
			    cp->ct_reason, cp->ct_explan);
		FUNC7(rdata);
	} else {
		FUNC0(disc, "GPN_ID unexpected response code %x\n",
			    FUNC13(cp->ct_cmd));
redisc:
		FUNC11(&disc->disc_mutex);
		FUNC3(disc);
		FUNC12(&disc->disc_mutex);
	}
out:
	FUNC10(&rdata->kref, fc_rport_destroy);
}