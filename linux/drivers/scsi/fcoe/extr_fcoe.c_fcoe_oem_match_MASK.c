#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fcp_cmnd {int fc_flags; int /*<<< orphan*/  fc_dl; } ;
struct fc_frame_header {scalar_t__ fh_r_ctl; int /*<<< orphan*/  fh_rx_id; } ;
struct fc_frame {int dummy; } ;
struct TYPE_3__ {scalar_t__ data_len; } ;

/* Variables and functions */
 int FCP_CFL_WRDATA ; 
 scalar_t__ FC_RCTL_DD_UNSOL_CMD ; 
 scalar_t__ FC_XID_UNKNOWN ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 struct fc_frame_header* FUNC1 (struct fc_frame*) ; 
 struct fcp_cmnd* FUNC2 (struct fc_frame*,int) ; 
 scalar_t__ fcoe_ddp_min ; 
 TYPE_1__* FUNC3 (struct fc_frame*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct fc_frame *fp)
{
	struct fc_frame_header *fh = FUNC1(fp);
	struct fcp_cmnd *fcp;

	if (FUNC0(FUNC3(fp)) &&
	    (FUNC3(fp)->data_len > fcoe_ddp_min))
		return true;
	else if ((FUNC3(fp) == NULL) &&
		 (fh->fh_r_ctl == FC_RCTL_DD_UNSOL_CMD) &&
		 (FUNC5(fh->fh_rx_id) == FC_XID_UNKNOWN)) {
		fcp = FUNC2(fp, sizeof(*fcp));
		if ((fcp->fc_flags & FCP_CFL_WRDATA) &&
		    (FUNC4(fcp->fc_dl) > fcoe_ddp_min))
			return true;
	}
	return false;
}