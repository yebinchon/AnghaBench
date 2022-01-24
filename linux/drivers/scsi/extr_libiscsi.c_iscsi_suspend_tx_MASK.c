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
struct iscsi_host {scalar_t__ workq; } ;
struct iscsi_conn {int /*<<< orphan*/  suspend_tx; TYPE_1__* session; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_SUSPEND_BIT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct iscsi_host* FUNC2 (struct Scsi_Host*) ; 

void FUNC3(struct iscsi_conn *conn)
{
	struct Scsi_Host *shost = conn->session->host;
	struct iscsi_host *ihost = FUNC2(shost);

	FUNC1(ISCSI_SUSPEND_BIT, &conn->suspend_tx);
	if (ihost->workq)
		FUNC0(ihost->workq);
}