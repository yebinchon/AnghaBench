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
struct fc_seq {int dummy; } ;
struct fc_lport {int state; int /*<<< orphan*/  lp_mutex; } ;
struct fc_frame_header {scalar_t__ fh_type; } ;
struct fc_frame {int dummy; } ;
struct fc_ct_hdr {scalar_t__ ct_fs_type; scalar_t__ ct_fs_subtype; int /*<<< orphan*/  ct_cmd; int /*<<< orphan*/  ct_explan; int /*<<< orphan*/  ct_reason; } ;

/* Variables and functions */
 struct fc_frame* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FC_EX_CLOSED ; 
 scalar_t__ FC_FDMI_SUBTYPE ; 
 scalar_t__ FC_FST_MGMT ; 
 int /*<<< orphan*/  FC_FS_ACC ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FC_TYPE_CT ; 
 scalar_t__ FUNC2 (struct fc_frame*) ; 
#define  LPORT_ST_DHBA 131 
#define  LPORT_ST_DPRT 130 
#define  LPORT_ST_RHBA 129 
#define  LPORT_ST_RPA 128 
 int /*<<< orphan*/  FUNC3 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_frame*) ; 
 struct fc_frame_header* FUNC5 (struct fc_frame*) ; 
 struct fc_ct_hdr* FUNC6 (struct fc_frame*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_lport*,int const) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC9 (struct fc_lport*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC10 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct fc_seq *sp, struct fc_frame *fp,
			     void *lp_arg)
{
	struct fc_lport *lport = lp_arg;
	struct fc_frame_header *fh;
	struct fc_ct_hdr *ct;

	FUNC1(lport, "Received a ms %s\n", FUNC3(fp));

	if (fp == FUNC0(-FC_EX_CLOSED))
		return;

	FUNC11(&lport->lp_mutex);

	if (lport->state < LPORT_ST_RHBA || lport->state > LPORT_ST_DPRT) {
		FUNC1(lport, "Received a management server response, "
			     "but in state %s\n", FUNC10(lport));
		if (FUNC2(fp))
			goto err;
		goto out;
	}

	if (FUNC2(fp)) {
		FUNC9(lport, fp);
		goto err;
	}

	fh = FUNC5(fp);
	ct = FUNC6(fp, sizeof(*ct));

	if (fh && ct && fh->fh_type == FC_TYPE_CT &&
	    ct->ct_fs_type == FC_FST_MGMT &&
	    ct->ct_fs_subtype == FC_FDMI_SUBTYPE) {
		FUNC1(lport, "Received a management server response, "
				    "reason=%d explain=%d\n",
				    ct->ct_reason,
				    ct->ct_explan);

		switch (lport->state) {
		case LPORT_ST_RHBA:
			if (FUNC13(ct->ct_cmd) == FC_FS_ACC)
				FUNC7(lport, LPORT_ST_RPA);
			else /* Error Skip RPA */
				FUNC8(lport);
			break;
		case LPORT_ST_RPA:
			FUNC8(lport);
			break;
		case LPORT_ST_DPRT:
			FUNC7(lport, LPORT_ST_RHBA);
			break;
		case LPORT_ST_DHBA:
			FUNC7(lport, LPORT_ST_DPRT);
			break;
		default:
			/* should have already been caught by state checks */
			break;
		}
	} else {
		/* Invalid Frame? */
		FUNC9(lport, fp);
	}
out:
	FUNC4(fp);
err:
	FUNC12(&lport->lp_mutex);
}