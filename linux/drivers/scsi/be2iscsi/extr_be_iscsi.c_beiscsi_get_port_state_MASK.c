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
struct iscsi_cls_host {int /*<<< orphan*/  port_state; } ;
struct beiscsi_hba {int /*<<< orphan*/  state; } ;
struct Scsi_Host {struct iscsi_cls_host* shost_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_HBA_LINK_UP ; 
 int /*<<< orphan*/  ISCSI_PORT_STATE_DOWN ; 
 int /*<<< orphan*/  ISCSI_PORT_STATE_UP ; 
 struct beiscsi_hba* FUNC0 (struct Scsi_Host*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct Scsi_Host *shost)
{
	struct beiscsi_hba *phba = FUNC0(shost);
	struct iscsi_cls_host *ihost = shost->shost_data;

	ihost->port_state = FUNC1(BEISCSI_HBA_LINK_UP, &phba->state) ?
		ISCSI_PORT_STATE_UP : ISCSI_PORT_STATE_DOWN;
}