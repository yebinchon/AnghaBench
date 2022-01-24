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
struct qedf_rport {int dummy; } ;
struct fc_frame_header {scalar_t__ fh_type; scalar_t__ fh_r_ctl; } ;
struct fc_frame {int dummy; } ;

/* Variables and functions */
#define  ELS_ADISC 128 
 scalar_t__ FC_RCTL_ELS_REQ ; 
 scalar_t__ FC_TYPE_ELS ; 
 struct fc_frame_header* FUNC0 (struct fc_frame*) ; 
 int FUNC1 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct qedf_rport*,struct fc_frame*) ; 

__attribute__((used)) static int FUNC3(struct qedf_rport *fcport, struct fc_frame *fp)
{
	struct fc_frame_header *fh;
	int rc = 0;

	fh = FUNC0(fp);
	if ((fh->fh_type == FC_TYPE_ELS) &&
	    (fh->fh_r_ctl == FC_RCTL_ELS_REQ)) {
		switch (FUNC1(fp)) {
		case ELS_ADISC:
			FUNC2(fcport, fp);
			rc = 1;
			break;
		}
	}

	return rc;
}