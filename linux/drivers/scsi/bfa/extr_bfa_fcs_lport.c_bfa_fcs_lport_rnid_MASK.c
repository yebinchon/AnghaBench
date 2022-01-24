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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct fchs_s {scalar_t__ s_id; scalar_t__ d_id; int /*<<< orphan*/  ox_id; } ;
struct fc_rnid_general_topology_data_s {int dummy; } ;
struct fc_rnid_common_id_data_s {int /*<<< orphan*/  node_name; int /*<<< orphan*/  port_name; } ;
struct fc_rnid_cmd_s {scalar_t__ node_id_data_format; } ;
struct bfa_rport_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct bfa_fcs_lport_s {int /*<<< orphan*/  lp_tag; TYPE_1__* fabric; int /*<<< orphan*/  fcs; } ;
struct TYPE_2__ {int /*<<< orphan*/  vf_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  FC_CLASS_3 ; 
 int /*<<< orphan*/  FC_MAX_PDUSZ ; 
 scalar_t__ RNID_NODEID_DATA_FORMAT_COMMON ; 
 scalar_t__ RNID_NODEID_DATA_FORMAT_DISCOVERY ; 
 struct bfa_fcxp_s* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcxp_s*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcxp_s*,struct bfa_rport_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct fchs_s*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcs_lport_s*,struct fc_rnid_general_topology_data_s*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (struct fchs_s*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct fc_rnid_common_id_data_s*,struct fc_rnid_general_topology_data_s*) ; 

__attribute__((used)) static void
FUNC9(struct bfa_fcs_lport_s *port, struct fchs_s *rx_fchs,
		struct fc_rnid_cmd_s *rnid, u16 rx_len)
{
	struct fc_rnid_common_id_data_s common_id_data;
	struct fc_rnid_general_topology_data_s gen_topo_data;
	struct fchs_s	fchs;
	struct bfa_fcxp_s *fcxp;
	struct bfa_rport_s *bfa_rport = NULL;
	u16	len;
	u32	data_format;

	FUNC7(port->fcs, rx_fchs->s_id);
	FUNC7(port->fcs, rx_fchs->d_id);
	FUNC7(port->fcs, rx_len);

	fcxp = FUNC0(port->fcs, BFA_FALSE);
	if (!fcxp)
		return;

	/*
	 * Check Node Indentification Data Format
	 * We only support General Topology Discovery Format.
	 * For any other requested Data Formats, we return Common Node Id Data
	 * only, as per FC-LS.
	 */
	FUNC7(port->fcs, rnid->node_id_data_format);
	if (rnid->node_id_data_format == RNID_NODEID_DATA_FORMAT_DISCOVERY) {
		data_format = RNID_NODEID_DATA_FORMAT_DISCOVERY;
		/*
		 * Get General topology data for this port
		 */
		FUNC6(port, &gen_topo_data);
	} else {
		data_format = RNID_NODEID_DATA_FORMAT_COMMON;
	}

	/*
	 * Copy the Node Id Info
	 */
	common_id_data.port_name = FUNC3(port);
	common_id_data.node_name = FUNC2(port);

	len = FUNC8(&fchs, FUNC4(fcxp),
				rx_fchs->s_id, FUNC1(port),
				rx_fchs->ox_id, data_format, &common_id_data,
				&gen_topo_data);

	FUNC5(fcxp, bfa_rport, port->fabric->vf_id, port->lp_tag,
			BFA_FALSE, FC_CLASS_3, len, &fchs, NULL, NULL,
			FC_MAX_PDUSZ, 0);
}