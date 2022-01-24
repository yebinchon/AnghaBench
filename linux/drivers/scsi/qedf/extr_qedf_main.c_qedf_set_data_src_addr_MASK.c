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
typedef  void* u8 ;
struct TYPE_5__ {TYPE_1__* sel_fcf; } ;
struct qedf_ctx {void** data_src_addr; int /*<<< orphan*/  dbg_ctx; TYPE_2__ ctlr; } ;
struct fc_frame_header {void** fh_d_id; } ;
struct fc_frame {int dummy; } ;
struct TYPE_6__ {void** granted_mac; } ;
struct TYPE_4__ {int /*<<< orphan*/  fc_map; } ;

/* Variables and functions */
 int QEDF_FCOE_MAC_METHOD_FCF_MAP ; 
 int QEDF_FCOE_MAC_METHOD_FCOE_SET_MAC ; 
 int QEDF_FCOE_MAC_METHOD_GRANGED_MAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,void**,int) ; 
 int /*<<< orphan*/  QEDF_LOG_DISC ; 
 int /*<<< orphan*/  FUNC1 (void**,void**) ; 
 int /*<<< orphan*/  FUNC2 (void**,void**) ; 
 struct fc_frame_header* FUNC3 (struct fc_frame*) ; 
 TYPE_3__* FUNC4 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC5 (void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void**) ; 

__attribute__((used)) static void FUNC7(struct qedf_ctx *qedf, struct fc_frame *fp)
{
	u8 *granted_mac;
	struct fc_frame_header *fh = FUNC3(fp);
	u8 fc_map[3];
	int method = 0;

	/* Get granted MAC address from FIP FLOGI payload */
	granted_mac = FUNC4(fp)->granted_mac;

	/*
	 * We set the source MAC for FCoE traffic based on the Granted MAC
	 * address from the switch.
	 *
	 * If granted_mac is non-zero, we used that.
	 * If the granted_mac is zeroed out, created the FCoE MAC based on
	 * the sel_fcf->fc_map and the d_id fo the FLOGI frame.
	 * If sel_fcf->fc_map is 0 then we use the default FCF-MAC plus the
	 * d_id of the FLOGI frame.
	 */
	if (!FUNC6(granted_mac)) {
		FUNC1(qedf->data_src_addr, granted_mac);
		method = QEDF_FCOE_MAC_METHOD_GRANGED_MAC;
	} else if (qedf->ctlr.sel_fcf->fc_map != 0) {
		FUNC5(fc_map, qedf->ctlr.sel_fcf->fc_map);
		qedf->data_src_addr[0] = fc_map[0];
		qedf->data_src_addr[1] = fc_map[1];
		qedf->data_src_addr[2] = fc_map[2];
		qedf->data_src_addr[3] = fh->fh_d_id[0];
		qedf->data_src_addr[4] = fh->fh_d_id[1];
		qedf->data_src_addr[5] = fh->fh_d_id[2];
		method = QEDF_FCOE_MAC_METHOD_FCF_MAP;
	} else {
		FUNC2(qedf->data_src_addr, fh->fh_d_id);
		method = QEDF_FCOE_MAC_METHOD_FCOE_SET_MAC;
	}

	FUNC0(&(qedf->dbg_ctx), QEDF_LOG_DISC,
	    "QEDF data_src_mac=%pM method=%d.\n", qedf->data_src_addr, method);
}