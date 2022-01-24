#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct lpfc_queue {scalar_t__ q_mode; int /*<<< orphan*/  EQ_no_entry; int /*<<< orphan*/  last_cpu; } ;
struct lpfc_hba_eq_hdl {int idx; struct lpfc_hba* phba; } ;
struct TYPE_6__ {int sli_flag; } ;
struct TYPE_5__ {struct lpfc_eq_intr_info* eq_info; TYPE_1__* hba_eq_hdl; int /*<<< orphan*/  hdwq; } ;
struct lpfc_hba {scalar_t__ link_state; int cfg_irq_chann; scalar_t__ intr_type; TYPE_3__ sli; scalar_t__ cfg_auto_imax; TYPE_2__ sli4_hba; int /*<<< orphan*/  hbalock; } ;
struct lpfc_eq_intr_info {int /*<<< orphan*/  icnt; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {struct lpfc_queue* eq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_SLI ; 
 scalar_t__ LPFC_EQD_ISR_TRIGGER ; 
 scalar_t__ LPFC_LINK_DOWN ; 
 scalar_t__ LPFC_MAX_AUTO_EQ_DELAY ; 
 int LPFC_SLI_USE_EQDR ; 
 scalar_t__ MSIX ; 
 int FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,struct lpfc_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,struct lpfc_queue*,scalar_t__) ; 
 int FUNC4 (struct lpfc_hba*,struct lpfc_queue*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

irqreturn_t
FUNC10(int irq, void *dev_id)
{
	struct lpfc_hba *phba;
	struct lpfc_hba_eq_hdl *hba_eq_hdl;
	struct lpfc_queue *fpeq;
	unsigned long iflag;
	int ecount = 0;
	int hba_eqidx;
	struct lpfc_eq_intr_info *eqi;
	uint32_t icnt;

	/* Get the driver's phba structure from the dev_id */
	hba_eq_hdl = (struct lpfc_hba_eq_hdl *)dev_id;
	phba = hba_eq_hdl->phba;
	hba_eqidx = hba_eq_hdl->idx;

	if (FUNC9(!phba))
		return IRQ_NONE;
	if (FUNC9(!phba->sli4_hba.hdwq))
		return IRQ_NONE;

	/* Get to the EQ struct associated with this vector */
	fpeq = phba->sli4_hba.hba_eq_hdl[hba_eqidx].eq;
	if (FUNC9(!fpeq))
		return IRQ_NONE;

	/* Check device state for handling interrupt */
	if (FUNC9(FUNC0(phba))) {
		/* Check again for link_state with lock held */
		FUNC6(&phba->hbalock, iflag);
		if (phba->link_state < LPFC_LINK_DOWN)
			/* Flush, clear interrupt, and rearm the EQ */
			FUNC2(phba, fpeq);
		FUNC7(&phba->hbalock, iflag);
		return IRQ_NONE;
	}

	eqi = phba->sli4_hba.eq_info;
	icnt = FUNC8(eqi->icnt);
	fpeq->last_cpu = FUNC5();

	if (icnt > LPFC_EQD_ISR_TRIGGER &&
	    phba->cfg_irq_chann == 1 &&
	    phba->cfg_auto_imax &&
	    fpeq->q_mode != LPFC_MAX_AUTO_EQ_DELAY &&
	    phba->sli.sli_flag & LPFC_SLI_USE_EQDR)
		FUNC3(phba, fpeq, LPFC_MAX_AUTO_EQ_DELAY);

	/* process and rearm the EQ */
	ecount = FUNC4(phba, fpeq);

	if (FUNC9(ecount == 0)) {
		fpeq->EQ_no_entry++;
		if (phba->intr_type == MSIX)
			/* MSI-X treated interrupt served as no EQ share INT */
			FUNC1(phba, KERN_WARNING, LOG_SLI,
					"0358 MSI-X interrupt with no EQE\n");
		else
			/* Non MSI-X treated on interrupt as EQ share INT */
			return IRQ_NONE;
	}

	return IRQ_HANDLED;
}