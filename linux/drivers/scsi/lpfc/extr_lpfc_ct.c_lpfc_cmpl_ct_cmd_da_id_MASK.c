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
struct lpfc_vport {scalar_t__ ct_flags; } ;
struct lpfc_iocbq {struct lpfc_vport* vport; } ;
struct lpfc_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ; 

__attribute__((used)) static void
FUNC1(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
 struct lpfc_iocbq *rspiocb)
{
	struct lpfc_vport *vport = cmdiocb->vport;

	/* even if it fails we will act as though it succeeded. */
	vport->ct_flags = 0;
	FUNC0(phba, cmdiocb, rspiocb);
	return;
}