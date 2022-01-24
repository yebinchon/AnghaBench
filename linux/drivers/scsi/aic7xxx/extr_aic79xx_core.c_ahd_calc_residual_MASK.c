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
typedef  int uint32_t ;
struct scb {int flags; struct hardware_scb* hscb; } ;
struct initiator_status {int /*<<< orphan*/  residual_datacnt; int /*<<< orphan*/  residual_sgptr; } ;
struct TYPE_2__ {struct initiator_status istatus; } ;
struct hardware_scb {TYPE_1__ shared_data; int /*<<< orphan*/  sgptr; } ;
struct ahd_softc {int dummy; } ;
struct ahd_dma_seg {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int AHD_DMA_LAST_SEG ; 
 int AHD_SG_LEN_MASK ; 
 int AHD_SHOW_MISC ; 
 int /*<<< orphan*/  CAM_DATA_RUN_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct scb*) ; 
 int SCB_SENSE ; 
 int SG_FULL_RESID ; 
 int SG_LIST_NULL ; 
 int SG_OVERRUN_RESID ; 
 int SG_PTR_MASK ; 
 int SG_STATUS_VALID ; 
 int ahd_debug ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC2 (struct scb*) ; 
 int FUNC3 (struct scb*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC6 (struct scb*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scb*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct scb*,int /*<<< orphan*/ ) ; 
 struct ahd_dma_seg* FUNC9 (struct ahd_softc*,struct scb*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,...) ; 

__attribute__((used)) static void
FUNC12(struct ahd_softc *ahd, struct scb *scb)
{
	struct hardware_scb *hscb;
	struct initiator_status *spkt;
	uint32_t sgptr;
	uint32_t resid_sgptr;
	uint32_t resid;

	/*
	 * 5 cases.
	 * 1) No residual.
	 *    SG_STATUS_VALID clear in sgptr.
	 * 2) Transferless command
	 * 3) Never performed any transfers.
	 *    sgptr has SG_FULL_RESID set.
	 * 4) No residual but target did not
	 *    save data pointers after the
	 *    last transfer, so sgptr was
	 *    never updated.
	 * 5) We have a partial residual.
	 *    Use residual_sgptr to determine
	 *    where we are.
	 */

	hscb = scb->hscb;
	sgptr = FUNC4(hscb->sgptr);
	if ((sgptr & SG_STATUS_VALID) == 0)
		/* Case 1 */
		return;
	sgptr &= ~SG_STATUS_VALID;

	if ((sgptr & SG_LIST_NULL) != 0)
		/* Case 2 */
		return;

	/*
	 * Residual fields are the same in both
	 * target and initiator status packets,
	 * so we can always use the initiator fields
	 * regardless of the role for this SCB.
	 */
	spkt = &hscb->shared_data.istatus;
	resid_sgptr = FUNC4(spkt->residual_sgptr);
	if ((sgptr & SG_FULL_RESID) != 0) {
		/* Case 3 */
		resid = FUNC3(scb);
	} else if ((resid_sgptr & SG_LIST_NULL) != 0) {
		/* Case 4 */
		return;
	} else if ((resid_sgptr & SG_OVERRUN_RESID) != 0) {
		FUNC5(ahd, scb);
		FUNC11("data overrun detected Tag == 0x%x.\n",
		       FUNC0(scb));
		FUNC1(ahd, scb);
		FUNC8(scb, CAM_DATA_RUN_ERR);
		FUNC2(scb);
		return;
	} else if ((resid_sgptr & ~SG_PTR_MASK) != 0) {
		FUNC10("Bogus resid sgptr value 0x%x\n", resid_sgptr);
		/* NOTREACHED */
	} else {
		struct ahd_dma_seg *sg;

		/*
		 * Remainder of the SG where the transfer
		 * stopped.  
		 */
		resid = FUNC4(spkt->residual_datacnt) & AHD_SG_LEN_MASK;
		sg = FUNC9(ahd, scb, resid_sgptr & SG_PTR_MASK);

		/* The residual sg_ptr always points to the next sg */
		sg--;

		/*
		 * Add up the contents of all residual
		 * SG segments that are after the SG where
		 * the transfer stopped.
		 */
		while ((FUNC4(sg->len) & AHD_DMA_LAST_SEG) == 0) {
			sg++;
			resid += FUNC4(sg->len) & AHD_SG_LEN_MASK;
		}
	}
	if ((scb->flags & SCB_SENSE) == 0)
		FUNC6(scb, resid);
	else
		FUNC7(scb, resid);

#ifdef AHD_DEBUG
	if ((ahd_debug & AHD_SHOW_MISC) != 0) {
		ahd_print_path(ahd, scb);
		printk("Handled %sResidual of %d bytes\n",
		       (scb->flags & SCB_SENSE) ? "Sense " : "", resid);
	}
#endif
}