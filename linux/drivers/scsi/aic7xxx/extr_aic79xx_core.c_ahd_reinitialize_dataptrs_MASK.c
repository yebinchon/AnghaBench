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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int u_int ;
struct scb {int dummy; } ;
struct ahd_softc {int flags; } ;
struct ahd_dma_seg {int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct ahd_dma64_seg {int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
typedef  int ahd_mode_state ;

/* Variables and functions */
 int AHD_64BIT_ADDRESSING ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int,int) ; 
 int AHD_MODE_DFF0_MSK ; 
 int AHD_MODE_DFF1_MSK ; 
 int /*<<< orphan*/  AHD_MODE_SCSI ; 
 int AHD_SG_LEN_MASK ; 
 int CLRCHN ; 
 int CLRSHCNT ; 
 int CURRFIFO_0 ; 
 int CURRFIFO_1 ; 
 scalar_t__ DFFSTAT ; 
 scalar_t__ DFFSXFRCTL ; 
 int FIFOFREE ; 
 scalar_t__ HADDR ; 
 scalar_t__ HCNT ; 
 scalar_t__ MDFFSTAT ; 
 int RSTCHN ; 
 scalar_t__ SCB_RESIDUAL_DATACNT ; 
 int /*<<< orphan*/  SCB_RESIDUAL_SGPTR ; 
 int SG_PTR_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ahd_softc*) ; 
 int FUNC3 (struct ahd_softc*,scalar_t__) ; 
 int FUNC4 (struct ahd_softc*,scalar_t__) ; 
 int FUNC5 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct scb* FUNC8 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ahd_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ahd_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ahd_softc*,struct scb*) ; 
 int FUNC12 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC14 (struct ahd_softc*,struct scb*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static void
FUNC16(struct ahd_softc *ahd)
{
	struct		 scb *scb;
	ahd_mode_state	 saved_modes;
	u_int		 scb_index;
	u_int		 wait;
	uint32_t	 sgptr;
	uint32_t	 resid;
	uint64_t	 dataptr;

	FUNC0(ahd, AHD_MODE_DFF0_MSK|AHD_MODE_DFF1_MSK,
			 AHD_MODE_DFF0_MSK|AHD_MODE_DFF1_MSK);
			 
	scb_index = FUNC2(ahd);
	scb = FUNC8(ahd, scb_index);

	/*
	 * Release and reacquire the FIFO so we
	 * have a clean slate.
	 */
	FUNC9(ahd, DFFSXFRCTL, CLRCHN);
	wait = 1000;
	while (--wait && !(FUNC3(ahd, MDFFSTAT) & FIFOFREE))
		FUNC1(100);
	if (wait == 0) {
		FUNC11(ahd, scb);
		FUNC15("ahd_reinitialize_dataptrs: Forcing FIFO free.\n");
		FUNC9(ahd, DFFSXFRCTL, RSTCHN|CLRSHCNT);
	}
	saved_modes = FUNC12(ahd);
	FUNC13(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
	FUNC9(ahd, DFFSTAT,
		 FUNC3(ahd, DFFSTAT)
		| (saved_modes == 0x11 ? CURRFIFO_1 : CURRFIFO_0));

	/*
	 * Determine initial values for data_addr and data_cnt
	 * for resuming the data phase.
	 */
	sgptr = FUNC5(ahd, SCB_RESIDUAL_SGPTR);
	sgptr &= SG_PTR_MASK;

	resid = (FUNC4(ahd, SCB_RESIDUAL_DATACNT + 2) << 16)
	      | (FUNC4(ahd, SCB_RESIDUAL_DATACNT + 1) << 8)
	      | FUNC4(ahd, SCB_RESIDUAL_DATACNT);

	if ((ahd->flags & AHD_64BIT_ADDRESSING) != 0) {
		struct ahd_dma64_seg *sg;

		sg = FUNC14(ahd, scb, sgptr);

		/* The residual sg_ptr always points to the next sg */
		sg--;

		dataptr = FUNC7(sg->addr)
			+ (FUNC6(sg->len) & AHD_SG_LEN_MASK)
			- resid;
		FUNC10(ahd, HADDR + 4, dataptr >> 32);
	} else {
		struct	 ahd_dma_seg *sg;

		sg = FUNC14(ahd, scb, sgptr);

		/* The residual sg_ptr always points to the next sg */
		sg--;

		dataptr = FUNC6(sg->addr)
			+ (FUNC6(sg->len) & AHD_SG_LEN_MASK)
			- resid;
		FUNC9(ahd, HADDR + 4,
			 (FUNC6(sg->len) & ~AHD_SG_LEN_MASK) >> 24);
	}
	FUNC10(ahd, HADDR, dataptr);
	FUNC9(ahd, HCNT + 2, resid >> 16);
	FUNC9(ahd, HCNT + 1, resid >> 8);
	FUNC9(ahd, HCNT, resid);
}