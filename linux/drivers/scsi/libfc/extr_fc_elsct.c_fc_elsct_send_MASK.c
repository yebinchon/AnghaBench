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
typedef  int /*<<< orphan*/  u32 ;
struct fc_seq {int dummy; } ;
struct fc_lport {int /*<<< orphan*/  port_id; } ;
struct fc_frame {int dummy; } ;
typedef  enum fc_rctl { ____Placeholder_fc_rctl } fc_rctl ;
typedef  enum fc_fh_type { ____Placeholder_fc_fh_type } fc_fh_type ;

/* Variables and functions */
 unsigned int ELS_AUTH_ELS ; 
 unsigned int ELS_LS_RJT ; 
 int /*<<< orphan*/  FC_FCTL_REQ ; 
 int FUNC0 (struct fc_lport*,int /*<<< orphan*/ ,struct fc_frame*,unsigned int,int*,int*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct fc_lport*,int /*<<< orphan*/ ,struct fc_frame*,unsigned int,int*,int*) ; 
 struct fc_seq* FUNC2 (struct fc_lport*,struct fc_frame*,void (*) (struct fc_seq*,struct fc_frame*,void*),int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_frame*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_frame*) ; 

struct fc_seq *FUNC5(struct fc_lport *lport, u32 did,
			     struct fc_frame *fp, unsigned int op,
			     void (*resp)(struct fc_seq *,
					  struct fc_frame *,
					  void *),
			     void *arg, u32 timer_msec)
{
	enum fc_rctl r_ctl;
	enum fc_fh_type fh_type;
	int rc;

	/* ELS requests */
	if ((op >= ELS_LS_RJT) && (op <= ELS_AUTH_ELS))
		rc = FUNC1(lport, did, fp, op, &r_ctl, &fh_type);
	else {
		/* CT requests */
		rc = FUNC0(lport, did, fp, op, &r_ctl, &fh_type, &did);
	}

	if (rc) {
		FUNC4(fp);
		return NULL;
	}

	FUNC3(fp, r_ctl, did, lport->port_id, fh_type,
		       FC_FCTL_REQ, 0);

	return FUNC2(lport, fp, resp, NULL, arg, timer_msec);
}