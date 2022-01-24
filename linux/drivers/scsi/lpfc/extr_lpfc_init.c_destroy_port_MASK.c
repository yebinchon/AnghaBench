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
struct lpfc_vport {int /*<<< orphan*/  listentry; struct lpfc_hba* phba; } ;
struct lpfc_hba {int /*<<< orphan*/  port_list_lock; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*) ; 
 struct Scsi_Host* FUNC4 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(struct lpfc_vport *vport)
{
	struct Scsi_Host *shost = FUNC4(vport);
	struct lpfc_hba  *phba = vport->phba;

	FUNC3(vport);
	FUNC0(shost);
	FUNC5(shost);

	FUNC6(&phba->port_list_lock);
	FUNC1(&vport->listentry);
	FUNC7(&phba->port_list_lock);

	FUNC2(vport);
	return;
}