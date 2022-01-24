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
struct scsi_qla_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*) ; 

__attribute__((used)) static
void FUNC3(struct scsi_qla_host *vha)
{

	if (FUNC1(vha)) {
		/* Someone else is holding the lock. */
		FUNC0(ql_log_warn, vha, 0xb120, "Resetting flash_lock\n");
	}

	/*
	 * Either we got the lock, or someone
	 * else died while holding it.
	 * In either case, unlock.
	 */
	FUNC2(vha);
}