#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct beiscsi_hba {int /*<<< orphan*/  interface_handle; } ;
struct be_dma_mem {struct be_cmd_set_dhcp_req* va; } ;
struct be_cmd_set_dhcp_req {int flags; int retry_count; int /*<<< orphan*/  ip_type; int /*<<< orphan*/  interface_hndl; } ;
struct TYPE_4__ {int /*<<< orphan*/  ip_type; int /*<<< orphan*/ * addr; } ;
struct be_cmd_get_if_info_resp {TYPE_2__ ip_addr; scalar_t__ dhcp_state; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;
struct be_cmd_get_def_gateway_resp {TYPE_1__ ip_addr; } ;
typedef  int /*<<< orphan*/  gw_resp ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_CONFIG ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ISCSI ; 
 int /*<<< orphan*/  IP_ACTION_DEL ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  OPCODE_COMMON_ISCSI_NTWK_CONFIG_STATELESS_IP_ADDR ; 
 int FUNC0 (struct beiscsi_hba*,struct be_dma_mem*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct beiscsi_hba*,struct be_cmd_get_if_info_resp*) ; 
 int FUNC2 (struct beiscsi_hba*,int /*<<< orphan*/ ,struct be_cmd_get_def_gateway_resp*) ; 
 int FUNC3 (struct beiscsi_hba*,int /*<<< orphan*/ ,struct be_cmd_get_if_info_resp**) ; 
 int FUNC4 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (struct beiscsi_hba*,struct be_dma_mem*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct be_cmd_get_if_info_resp*) ; 
 int /*<<< orphan*/  FUNC9 (struct be_cmd_get_def_gateway_resp*,int /*<<< orphan*/ ,int) ; 

int FUNC10(struct beiscsi_hba *phba, u32 ip_type)
{
	struct be_cmd_get_def_gateway_resp gw_resp;
	struct be_cmd_get_if_info_resp *if_info;
	struct be_cmd_set_dhcp_req *dhcpreq;
	struct be_dma_mem nonemb_cmd;
	u8 *gw;
	int rc;

	rc = FUNC3(phba, ip_type, &if_info);
	if (rc)
		return rc;

	if (if_info->dhcp_state) {
		FUNC6(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
				"BG_%d : DHCP Already Enabled\n");
		goto exit;
	}

	/* first delete any IP set */
	if (!FUNC5(if_info->ip_addr.addr, ip_type)) {
		rc = FUNC1(phba, if_info);
		if (rc)
			goto exit;
	}

	/* delete gateway settings if mode change is to DHCP */
	FUNC9(&gw_resp, 0, sizeof(gw_resp));
	/* use ip_type provided in if_info */
	rc = FUNC2(phba, if_info->ip_addr.ip_type, &gw_resp);
	if (rc) {
		FUNC6(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
			    "BG_%d : Failed to Get Gateway Addr\n");
		goto exit;
	}
	gw = (u8 *)&gw_resp.ip_addr.addr;
	if (!FUNC5(gw, if_info->ip_addr.ip_type)) {
		rc = FUNC4(phba, IP_ACTION_DEL,
				       if_info->ip_addr.ip_type, gw);
		if (rc) {
			FUNC6(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
				    "BG_%d : Failed to clear Gateway Addr Set\n");
			goto exit;
		}
	}

	rc = FUNC7(phba, &nonemb_cmd, CMD_SUBSYSTEM_ISCSI,
			OPCODE_COMMON_ISCSI_NTWK_CONFIG_STATELESS_IP_ADDR,
			sizeof(*dhcpreq));
	if (rc)
		goto exit;

	dhcpreq = nonemb_cmd.va;
	dhcpreq->flags = 1; /* 1 - blocking; 0 - non-blocking */
	dhcpreq->retry_count = 1;
	dhcpreq->interface_hndl = phba->interface_handle;
	dhcpreq->ip_type = ip_type;
	rc = FUNC0(phba, &nonemb_cmd, NULL, NULL, 0);

exit:
	FUNC8(if_info);
	return rc;
}