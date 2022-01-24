#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct ipr_hostrcb64_config_element {scalar_t__ descriptor_id; scalar_t__ type_status; size_t link_rate; int /*<<< orphan*/ * wwid; int /*<<< orphan*/  res_path; } ;
struct ipr_hostrcb {int /*<<< orphan*/  ioa_cfg; } ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ status; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ IPR_DESCRIPTOR_MASK ; 
 scalar_t__ IPR_DESCRIPTOR_SIS64 ; 
 int IPR_MAX_RES_PATH_LENGTH ; 
 scalar_t__ IPR_PATH_CFG_NOT_EXIST ; 
 scalar_t__ IPR_PATH_CFG_STATUS_MASK ; 
 scalar_t__ IPR_PATH_CFG_TYPE_MASK ; 
 size_t IPR_PHY_LINK_RATE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ipr_hostrcb*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * link_rate ; 
 TYPE_1__* path_status_desc ; 
 TYPE_1__* path_type_desc ; 

__attribute__((used)) static void FUNC4(struct ipr_hostrcb *hostrcb,
				struct ipr_hostrcb64_config_element *cfg)
{
	int i, j;
	u8 desc_id = cfg->descriptor_id & IPR_DESCRIPTOR_MASK;
	u8 type = cfg->type_status & IPR_PATH_CFG_TYPE_MASK;
	u8 status = cfg->type_status & IPR_PATH_CFG_STATUS_MASK;
	char buffer[IPR_MAX_RES_PATH_LENGTH];

	if (type == IPR_PATH_CFG_NOT_EXIST || desc_id != IPR_DESCRIPTOR_SIS64)
		return;

	for (i = 0; i < FUNC0(path_type_desc); i++) {
		if (path_type_desc[i].type != type)
			continue;

		for (j = 0; j < FUNC0(path_status_desc); j++) {
			if (path_status_desc[j].status != status)
				continue;

			FUNC3(hostrcb, "%s %s: Resource Path=%s, Link rate=%s, WWN=%08X%08X\n",
				     path_status_desc[j].desc, path_type_desc[i].desc,
				     FUNC2(hostrcb->ioa_cfg,
					cfg->res_path, buffer, sizeof(buffer)),
					link_rate[cfg->link_rate & IPR_PHY_LINK_RATE_MASK],
					FUNC1(cfg->wwid[0]),
					FUNC1(cfg->wwid[1]));
			return;
		}
	}
	FUNC3(hostrcb, "Path element=%02X: Resource Path=%s, Link rate=%s "
		     "WWN=%08X%08X\n", cfg->type_status,
		     FUNC2(hostrcb->ioa_cfg,
			cfg->res_path, buffer, sizeof(buffer)),
			link_rate[cfg->link_rate & IPR_PHY_LINK_RATE_MASK],
			FUNC1(cfg->wwid[0]), FUNC1(cfg->wwid[1]));
}