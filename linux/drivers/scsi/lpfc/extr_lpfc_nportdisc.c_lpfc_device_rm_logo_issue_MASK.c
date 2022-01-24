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
struct lpfc_vport {int /*<<< orphan*/  phba; } ;
struct lpfc_nodelist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NLP_STE_FREED_NODE ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,struct lpfc_nodelist*) ; 

__attribute__((used)) static uint32_t
FUNC3(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
			  void *arg, uint32_t evt)
{
	/*
	 * DevLoss has timed out and is calling for Device Remove.
	 * In this case, abort the LOGO and cleanup the ndlp
	 */

	FUNC2(vport, ndlp);
	/* software abort outstanding PLOGI */
	FUNC1(vport->phba, ndlp);
	FUNC0(vport, ndlp);
	return NLP_STE_FREED_NODE;
}