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
struct iscsi_host {scalar_t__ num_sessions; scalar_t__ workq; int /*<<< orphan*/  session_removal_wq; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_HOST_REMOVED ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iscsi_notify_host_removed ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 struct iscsi_host* FUNC4 (struct Scsi_Host*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

void FUNC9(struct Scsi_Host *shost)
{
	struct iscsi_host *ihost = FUNC4(shost);
	unsigned long flags;

	FUNC6(&ihost->lock, flags);
	ihost->state = ISCSI_HOST_REMOVED;
	FUNC7(&ihost->lock, flags);

	FUNC2(shost, iscsi_notify_host_removed);
	FUNC8(ihost->session_removal_wq,
				 ihost->num_sessions == 0);
	if (FUNC5(current))
		FUNC1(current);

	FUNC3(shost);
	if (ihost->workq)
		FUNC0(ihost->workq);
}