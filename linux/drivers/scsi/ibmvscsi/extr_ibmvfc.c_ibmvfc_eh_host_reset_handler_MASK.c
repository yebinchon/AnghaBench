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
struct ibmvfc_host {int /*<<< orphan*/  host; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int FAILED ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct ibmvfc_host* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct scsi_cmnd *cmd)
{
	int rc;
	struct ibmvfc_host *vhost = FUNC2(cmd->device->host);

	FUNC0(vhost->dev, "Resetting connection due to error recovery\n");
	rc = FUNC1(vhost->host);

	return rc ? FAILED : SUCCESS;
}