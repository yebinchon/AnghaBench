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
struct scsi_cmnd {int /*<<< orphan*/  device; } ;
struct lpfc_vport {int cfg_devloss_tmo; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; } ;

/* Variables and functions */
 int FAILED ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_FCP ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 
 scalar_t__ NLP_STE_MAPPED_NODE ; 
 int SUCCESS ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct lpfc_rport_data*) ; 
 struct lpfc_rport_data* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static int
FUNC6(struct lpfc_vport *vport, struct scsi_cmnd *cmnd)
{
	struct lpfc_rport_data *rdata;
	struct lpfc_nodelist *pnode;
	unsigned long later;

	rdata = FUNC2(cmnd->device);
	if (!rdata) {
		FUNC1(vport, KERN_INFO, LOG_FCP,
			"0797 Tgt Map rport failure: rdata x%px\n", rdata);
		return FAILED;
	}
	pnode = rdata->pnode;
	/*
	 * If target is not in a MAPPED state, delay until
	 * target is rediscovered or devloss timeout expires.
	 */
	later = FUNC3(2 * vport->cfg_devloss_tmo * 1000) + jiffies;
	while (FUNC5(later, jiffies)) {
		if (!pnode || !FUNC0(pnode))
			return FAILED;
		if (pnode->nlp_state == NLP_STE_MAPPED_NODE)
			return SUCCESS;
		FUNC4(FUNC3(500));
		rdata = FUNC2(cmnd->device);
		if (!rdata)
			return FAILED;
		pnode = rdata->pnode;
	}
	if (!pnode || !FUNC0(pnode) ||
	    (pnode->nlp_state != NLP_STE_MAPPED_NODE))
		return FAILED;
	return SUCCESS;
}