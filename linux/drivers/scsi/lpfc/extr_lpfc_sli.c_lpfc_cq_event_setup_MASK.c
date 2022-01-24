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
struct lpfc_hba {int dummy; } ;
struct lpfc_cq_event {int /*<<< orphan*/  cqe; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_SLI ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct lpfc_cq_event* FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int) ; 

inline struct lpfc_cq_event *
FUNC3(struct lpfc_hba *phba, void *entry, int size)
{
	struct lpfc_cq_event *cq_event;

	/* Allocate a new internal CQ_EVENT entry */
	cq_event = FUNC1(phba);
	if (!cq_event) {
		FUNC0(phba, KERN_ERR, LOG_SLI,
				"0602 Failed to alloc CQ_EVENT entry\n");
		return NULL;
	}

	/* Move the CQE into the event */
	FUNC2(&cq_event->cqe, entry, size);
	return cq_event;
}