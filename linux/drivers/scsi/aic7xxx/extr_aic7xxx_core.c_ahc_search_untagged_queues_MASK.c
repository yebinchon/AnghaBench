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
typedef  int /*<<< orphan*/  uint32_t ;
struct scb_tailq {int dummy; } ;
struct scb {int flags; int /*<<< orphan*/ * io_ctx; } ;
struct ahc_softc {int flags; struct scb_tailq* untagged_queues; } ;
typedef  int /*<<< orphan*/  cam_status ;
typedef  int ahc_search_action ;
typedef  int /*<<< orphan*/ * ahc_io_ctx_t ;
struct TYPE_2__ {int /*<<< orphan*/  tqe; } ;

/* Variables and functions */
 int AHC_SCB_BTT ; 
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_REQ_INPROG ; 
 int CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int SCB_ACTIVE ; 
 int /*<<< orphan*/  SCB_LIST_NULL ; 
 int SCB_UNTAGGEDQ ; 
#define  SEARCH_COMPLETE 130 
#define  SEARCH_COUNT 129 
#define  SEARCH_REMOVE 128 
 struct scb* FUNC0 (struct scb_tailq*) ; 
 struct scb* FUNC1 (struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scb_tailq*,struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC4 (struct scb*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct scb*) ; 
 scalar_t__ FUNC7 (struct ahc_softc*,struct scb*,int,char,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct scb*,int /*<<< orphan*/ ) ; 
 TYPE_1__ links ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int
FUNC11(struct ahc_softc *ahc, ahc_io_ctx_t ctx,
			   int target, char channel, int lun, uint32_t status,
			   ahc_search_action action)
{
	struct	scb *scb;
	int	maxtarget;
	int	found;
	int	i;

	if (action == SEARCH_COMPLETE) {
		/*
		 * Don't attempt to run any queued untagged transactions
		 * until we are done with the abort process.
		 */
		FUNC5(ahc);
	}

	found = 0;
	i = 0;
	if ((ahc->flags & AHC_SCB_BTT) == 0) {

		maxtarget = 16;
		if (target != CAM_TARGET_WILDCARD) {

			i = target;
			if (channel == 'B')
				i += 8;
			maxtarget = i + 1;
		}
	} else {
		maxtarget = 0;
	}

	for (; i < maxtarget; i++) {
		struct scb_tailq *untagged_q;
		struct scb *next_scb;

		untagged_q = &(ahc->untagged_queues[i]);
		next_scb = FUNC0(untagged_q);
		while (next_scb != NULL) {

			scb = next_scb;
			next_scb = FUNC1(scb, links.tqe);

			/*
			 * The head of the list may be the currently
			 * active untagged command for a device.
			 * We're only searching for commands that
			 * have not been started.  A transaction
			 * marked active but still in the qinfifo
			 * is removed by the qinfifo scanning code
			 * above.
			 */
			if ((scb->flags & SCB_ACTIVE) != 0)
				continue;

			if (FUNC7(ahc, scb, target, channel, lun,
					  SCB_LIST_NULL, ROLE_INITIATOR) == 0
			 || (ctx != NULL && ctx != scb->io_ctx))
				continue;

			/*
			 * We found an scb that needs to be acted on.
			 */
			found++;
			switch (action) {
			case SEARCH_COMPLETE:
			{
				cam_status ostat;
				cam_status cstat;

				ostat = FUNC6(scb);
				if (ostat == CAM_REQ_INPROG)
					FUNC9(scb, status);
				cstat = FUNC6(scb);
				if (cstat != CAM_REQ_CMP)
					FUNC4(scb);
				if ((scb->flags & SCB_ACTIVE) == 0)
					FUNC10("Inactive SCB in untaggedQ\n");
				FUNC3(ahc, scb);
				break;
			}
			case SEARCH_REMOVE:
				scb->flags &= ~SCB_UNTAGGEDQ;
				FUNC2(untagged_q, scb, links.tqe);
				break;
			case SEARCH_COUNT:
				break;
			}
		}
	}

	if (action == SEARCH_COMPLETE)
		FUNC8(ahc);
	return (found);
}