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
struct scsi_cmnd {TYPE_1__* device; } ;
struct pvscsi_adapter {int /*<<< orphan*/  hw_lock; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*) ; 
 struct pvscsi_adapter* FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct scsi_cmnd *cmd)
{
	struct Scsi_Host *host = cmd->device->host;
	struct pvscsi_adapter *adapter = FUNC4(host);
	unsigned long flags;

	FUNC3(KERN_INFO, cmd, "SCSI Bus reset\n");

	/*
	 * We don't want to queue new requests for this bus after
	 * flushing all pending requests to emulation, since new
	 * requests could then sneak in during this bus reset phase,
	 * so take the lock now.
	 */
	FUNC5(&adapter->hw_lock, flags);

	FUNC2(adapter);
	FUNC0(adapter);
	FUNC1(adapter);

	FUNC6(&adapter->hw_lock, flags);

	return SUCCESS;
}