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
struct esas2r_request {int /*<<< orphan*/ * interrupt_cx; } ;
struct esas2r_disc_context {int flags; int state; } ;
struct esas2r_adapter {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_DISC_IN_PROG ; 
 int /*<<< orphan*/  AF_DISC_PENDING ; 
 int DCF_DEV_CHANGE ; 
 int DCF_DEV_SCAN ; 
#define  DCS_BLOCK_DEV_SCAN 135 
#define  DCS_DEV_ADD 134 
#define  DCS_DEV_RMV 133 
#define  DCS_DISC_DONE 132 
#define  DCS_PART_INFO 131 
#define  DCS_PT_DEV_ADDR 130 
#define  DCS_PT_DEV_INFO 129 
#define  DCS_RAID_GRP_INFO 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct esas2r_adapter*,struct esas2r_request*) ; 
 int FUNC3 (struct esas2r_adapter*,struct esas2r_request*) ; 
 int FUNC4 (struct esas2r_adapter*,struct esas2r_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct esas2r_adapter*) ; 
 int FUNC6 (struct esas2r_adapter*,struct esas2r_request*) ; 
 int FUNC7 (struct esas2r_adapter*,struct esas2r_request*) ; 
 int FUNC8 (struct esas2r_adapter*,struct esas2r_request*) ; 
 int FUNC9 (struct esas2r_adapter*,struct esas2r_request*) ; 
 int FUNC10 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC12(struct esas2r_adapter *a,
				 struct esas2r_request *rq)
{
	struct esas2r_disc_context *dc =
		(struct esas2r_disc_context *)rq->interrupt_cx;
	bool rslt;

	/* Device discovery/removal */
	while (dc->flags & (DCF_DEV_CHANGE | DCF_DEV_SCAN)) {
		rslt = false;

		switch (dc->state) {
		case DCS_DEV_RMV:

			rslt = FUNC4(a, rq);
			break;

		case DCS_DEV_ADD:

			rslt = FUNC3(a, rq);
			break;

		case DCS_BLOCK_DEV_SCAN:

			rslt = FUNC2(a, rq);
			break;

		case DCS_RAID_GRP_INFO:

			rslt = FUNC9(a, rq);
			break;

		case DCS_PART_INFO:

			rslt = FUNC6(a, rq);
			break;

		case DCS_PT_DEV_INFO:

			rslt = FUNC8(a, rq);
			break;
		case DCS_PT_DEV_ADDR:

			rslt = FUNC7(a, rq);
			break;
		case DCS_DISC_DONE:

			dc->flags &= ~(DCF_DEV_CHANGE | DCF_DEV_SCAN);
			break;

		default:

			FUNC1();
			dc->state = DCS_DISC_DONE;
			break;
		}

		if (rslt)
			return true;
	}

	/* Discovery is done...for now. */
	rq->interrupt_cx = NULL;

	if (!FUNC11(AF_DISC_PENDING, &a->flags))
		FUNC5(a);

	FUNC0(AF_DISC_IN_PROG, &a->flags);

	/* Start the next discovery. */
	return FUNC10(a);
}