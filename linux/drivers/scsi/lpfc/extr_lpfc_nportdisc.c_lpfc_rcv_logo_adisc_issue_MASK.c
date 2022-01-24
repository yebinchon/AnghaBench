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
typedef  int /*<<< orphan*/  uint32_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_state; } ;
struct lpfc_iocbq {int dummy; } ;
struct lpfc_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_CMD_LOGO ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,struct lpfc_nodelist*,struct lpfc_iocbq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC2(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
			  void *arg, uint32_t evt)
{
	struct lpfc_hba *phba = vport->phba;
	struct lpfc_iocbq *cmdiocb;

	cmdiocb = (struct lpfc_iocbq *) arg;

	/* software abort outstanding ADISC */
	FUNC0(phba, ndlp);

	FUNC1(vport, ndlp, cmdiocb, ELS_CMD_LOGO);
	return ndlp->nlp_state;
}