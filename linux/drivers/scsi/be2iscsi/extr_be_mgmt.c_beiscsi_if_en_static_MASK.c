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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct beiscsi_hba {int /*<<< orphan*/  interface_handle; } ;
struct be_dma_mem {struct be_cmd_rel_dhcp_req* va; } ;
struct be_cmd_rel_dhcp_req {int /*<<< orphan*/  ip_type; int /*<<< orphan*/  interface_hndl; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct be_cmd_get_if_info_resp {TYPE_1__ ip_addr; scalar_t__ dhcp_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_CONFIG ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ISCSI ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  OPCODE_COMMON_ISCSI_NTWK_REL_STATELESS_IP_ADDR ; 
 int FUNC0 (struct beiscsi_hba*,struct be_dma_mem*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct beiscsi_hba*,struct be_cmd_get_if_info_resp*) ; 
 int FUNC2 (struct beiscsi_hba*,int /*<<< orphan*/ ,struct be_cmd_get_if_info_resp**) ; 
 int FUNC3 (struct beiscsi_hba*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (struct beiscsi_hba*,struct be_dma_mem*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct be_cmd_get_if_info_resp*) ; 

int FUNC8(struct beiscsi_hba *phba, u32 ip_type,
			 u8 *ip, u8 *subnet)
{
	struct be_cmd_get_if_info_resp *if_info;
	struct be_cmd_rel_dhcp_req *reldhcp;
	struct be_dma_mem nonemb_cmd;
	int rc;

	rc = FUNC2(phba, ip_type, &if_info);
	if (rc)
		return rc;

	if (if_info->dhcp_state) {
		rc = FUNC6(phba, &nonemb_cmd,
				CMD_SUBSYSTEM_ISCSI,
				OPCODE_COMMON_ISCSI_NTWK_REL_STATELESS_IP_ADDR,
				sizeof(*reldhcp));
		if (rc)
			goto exit;

		reldhcp = nonemb_cmd.va;
		reldhcp->interface_hndl = phba->interface_handle;
		reldhcp->ip_type = ip_type;
		rc = FUNC0(phba, &nonemb_cmd, NULL, NULL, 0);
		if (rc < 0) {
			FUNC5(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
				    "BG_%d : failed to release existing DHCP: %d\n",
				    rc);
			goto exit;
		}
	}

	/* first delete any IP set */
	if (!FUNC4(if_info->ip_addr.addr, ip_type)) {
		rc = FUNC1(phba, if_info);
		if (rc)
			goto exit;
	}

	/* if ip == NULL then this is called just to release DHCP IP */
	if (ip)
		rc = FUNC3(phba, ip, subnet, ip_type);
exit:
	FUNC7(if_info);
	return rc;
}