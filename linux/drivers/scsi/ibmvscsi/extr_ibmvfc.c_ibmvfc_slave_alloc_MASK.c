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
struct scsi_device {void* hostdata; struct Scsi_Host* host; } ;
struct ibmvfc_host {int /*<<< orphan*/  task_set; } ;
struct fc_rport {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (struct fc_rport*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*) ; 
 struct ibmvfc_host* FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 struct fc_rport* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct scsi_device *sdev)
{
	struct Scsi_Host *shost = sdev->host;
	struct fc_rport *rport = FUNC5(FUNC1(sdev));
	struct ibmvfc_host *vhost = FUNC2(shost);
	unsigned long flags = 0;

	if (!rport || FUNC0(rport))
		return -ENXIO;

	FUNC3(shost->host_lock, flags);
	sdev->hostdata = (void *)(unsigned long)vhost->task_set++;
	FUNC4(shost->host_lock, flags);
	return 0;
}