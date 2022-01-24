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
struct scsi_host_template {int dummy; } ;
struct iscsi_host {int /*<<< orphan*/  session_removal_wq; scalar_t__ num_sessions; int /*<<< orphan*/  state; int /*<<< orphan*/  lock; int /*<<< orphan*/  workq; int /*<<< orphan*/  workq_name; } ;
struct Scsi_Host {int host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_HOST_SETUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC2 (struct scsi_host_template*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 struct iscsi_host* FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct Scsi_Host *FUNC7(struct scsi_host_template *sht,
				   int dd_data_size, bool xmit_can_sleep)
{
	struct Scsi_Host *shost;
	struct iscsi_host *ihost;

	shost = FUNC2(sht, sizeof(struct iscsi_host) + dd_data_size);
	if (!shost)
		return NULL;
	ihost = FUNC4(shost);

	if (xmit_can_sleep) {
		FUNC5(ihost->workq_name, sizeof(ihost->workq_name),
			"iscsi_q_%d", shost->host_no);
		ihost->workq = FUNC0(ihost->workq_name);
		if (!ihost->workq)
			goto free_host;
	}

	FUNC6(&ihost->lock);
	ihost->state = ISCSI_HOST_SETUP;
	ihost->num_sessions = 0;
	FUNC1(&ihost->session_removal_wq);
	return shost;

free_host:
	FUNC3(shost);
	return NULL;
}