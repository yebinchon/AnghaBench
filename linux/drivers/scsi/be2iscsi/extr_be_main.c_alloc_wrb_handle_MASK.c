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
typedef  size_t uint16_t ;
struct wrb_handle {int dummy; } ;
struct hwi_wrb_context {int dummy; } ;
struct hwi_controller {struct hwi_wrb_context* wrb_context; } ;
struct TYPE_2__ {int /*<<< orphan*/  wrbs_per_cxn; } ;
struct beiscsi_hba {TYPE_1__ params; struct hwi_controller* phwi_ctrlr; } ;

/* Variables and functions */
 size_t FUNC0 (unsigned int) ; 
 struct wrb_handle* FUNC1 (struct hwi_wrb_context*,int /*<<< orphan*/ ) ; 

struct wrb_handle *FUNC2(struct beiscsi_hba *phba, unsigned int cid,
				    struct hwi_wrb_context **pcontext)
{
	struct hwi_wrb_context *pwrb_context;
	struct hwi_controller *phwi_ctrlr;
	uint16_t cri_index = FUNC0(cid);

	phwi_ctrlr = phba->phwi_ctrlr;
	pwrb_context = &phwi_ctrlr->wrb_context[cri_index];
	/* return the context address */
	*pcontext = pwrb_context;
	return FUNC1(pwrb_context, phba->params.wrbs_per_cxn);
}