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
struct pvscsi_adapter {int use_msg; int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  workqueue; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*) ; 
 struct pvscsi_adapter* FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct scsi_cmnd *cmd)
{
	struct Scsi_Host *host = cmd->device->host;
	struct pvscsi_adapter *adapter = FUNC8(host);
	unsigned long flags;
	bool use_msg;

	FUNC7(KERN_INFO, cmd, "SCSI Host reset\n");

	FUNC9(&adapter->hw_lock, flags);

	use_msg = adapter->use_msg;

	if (use_msg) {
		adapter->use_msg = 0;
		FUNC10(&adapter->hw_lock, flags);

		/*
		 * Now that we know that the ISR won't add more work on the
		 * workqueue we can safely flush any outstanding work.
		 */
		FUNC0(adapter->workqueue);
		FUNC9(&adapter->hw_lock, flags);
	}

	/*
	 * We're going to tear down the entire ring structure and set it back
	 * up, so stalling new requests until all completions are flushed and
	 * the rings are back in place.
	 */

	FUNC3(adapter);

	FUNC1(adapter);

	/*
	 * Now process any completions.  Note we do this AFTER adapter reset,
	 * which is strange, but stops races where completions get posted
	 * between processing the ring and issuing the reset.  The backend will
	 * not touch the ring memory after reset, so the immediately pre-reset
	 * completion ring state is still valid.
	 */
	FUNC2(adapter);

	FUNC4(adapter);
	adapter->use_msg = use_msg;
	FUNC5(adapter);
	FUNC6(adapter);

	FUNC10(&adapter->hw_lock, flags);

	return SUCCESS;
}