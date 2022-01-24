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
typedef  int /*<<< orphan*/  u16 ;
struct nvmet_req {int dummy; } ;
struct nvme_effects_log {void** iocs; void** acs; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVME_SC_INTERNAL ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_effects_log*) ; 
 struct nvme_effects_log* FUNC2 (int,int /*<<< orphan*/ ) ; 
 size_t nvme_admin_abort_cmd ; 
 size_t nvme_admin_async_event ; 
 size_t nvme_admin_get_features ; 
 size_t nvme_admin_get_log_page ; 
 size_t nvme_admin_identify ; 
 size_t nvme_admin_keep_alive ; 
 size_t nvme_admin_set_features ; 
 size_t nvme_cmd_dsm ; 
 size_t nvme_cmd_flush ; 
 size_t nvme_cmd_read ; 
 size_t nvme_cmd_write ; 
 size_t nvme_cmd_write_zeroes ; 
 int /*<<< orphan*/  FUNC3 (struct nvmet_req*,int /*<<< orphan*/ ,struct nvme_effects_log*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvmet_req*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct nvmet_req *req)
{
	u16 status = NVME_SC_INTERNAL;
	struct nvme_effects_log *log;

	log = FUNC2(sizeof(*log), GFP_KERNEL);
	if (!log)
		goto out;

	log->acs[nvme_admin_get_log_page]	= FUNC0(1 << 0);
	log->acs[nvme_admin_identify]		= FUNC0(1 << 0);
	log->acs[nvme_admin_abort_cmd]		= FUNC0(1 << 0);
	log->acs[nvme_admin_set_features]	= FUNC0(1 << 0);
	log->acs[nvme_admin_get_features]	= FUNC0(1 << 0);
	log->acs[nvme_admin_async_event]	= FUNC0(1 << 0);
	log->acs[nvme_admin_keep_alive]		= FUNC0(1 << 0);

	log->iocs[nvme_cmd_read]		= FUNC0(1 << 0);
	log->iocs[nvme_cmd_write]		= FUNC0(1 << 0);
	log->iocs[nvme_cmd_flush]		= FUNC0(1 << 0);
	log->iocs[nvme_cmd_dsm]			= FUNC0(1 << 0);
	log->iocs[nvme_cmd_write_zeroes]	= FUNC0(1 << 0);

	status = FUNC3(req, 0, log, sizeof(*log));

	FUNC1(log);
out:
	FUNC4(req, status);
}