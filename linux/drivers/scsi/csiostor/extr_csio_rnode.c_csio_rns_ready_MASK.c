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
struct csio_rnode {int /*<<< orphan*/  nport_id; int /*<<< orphan*/  sm; int /*<<< orphan*/  rdev_entry; } ;
struct csio_lnode {int dummy; } ;
typedef  enum csio_rn_ev { ____Placeholder_csio_rn_ev } csio_rn_ev ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_rnode*,int /*<<< orphan*/ ) ; 
#define  CSIO_RNFE_CLOSE 135 
#define  CSIO_RNFE_DOWN 134 
#define  CSIO_RNFE_LOGGED_IN 133 
#define  CSIO_RNFE_LOGO_RECV 132 
#define  CSIO_RNFE_NAME_MISSING 131 
#define  CSIO_RNFE_PLOGI_RECV 130 
#define  CSIO_RNFE_PRLI_DONE 129 
#define  CSIO_RNFE_PRLI_RECV 128 
 int /*<<< orphan*/  FUNC1 (struct csio_rnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_rnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_lnode*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_rnode*) ; 
 int FUNC5 (struct csio_lnode*,struct csio_rnode*,int /*<<< orphan*/ ) ; 
 struct csio_lnode* FUNC6 (struct csio_rnode*) ; 
 int /*<<< orphan*/  csio_rns_disappeared ; 
 int /*<<< orphan*/  csio_rns_offline ; 
 int /*<<< orphan*/  csio_rns_uninit ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_err_inval ; 
 int /*<<< orphan*/  n_evt_drop ; 
 int /*<<< orphan*/ * n_evt_sm ; 
 int /*<<< orphan*/  n_evt_unexp ; 

__attribute__((used)) static void
FUNC8(struct csio_rnode *rn, enum csio_rn_ev evt)
{
	struct csio_lnode *ln = FUNC6(rn);
	int ret = 0;

	FUNC0(rn, n_evt_sm[evt]);

	switch (evt) {
	case CSIO_RNFE_LOGGED_IN:
	case CSIO_RNFE_PLOGI_RECV:
		FUNC3(ln,
			"ssni:x%x Ignoring event %d recv from did:x%x "
			"in rn state[ready]\n", FUNC4(rn), evt,
			rn->nport_id);
		FUNC0(rn, n_evt_drop);
		break;

	case CSIO_RNFE_PRLI_DONE:
	case CSIO_RNFE_PRLI_RECV:
		ret = FUNC5(ln, rn, rn->rdev_entry);
		if (!ret)
			FUNC1(rn);
		else
			FUNC0(rn, n_err_inval);

		break;
	case CSIO_RNFE_DOWN:
		FUNC7(&rn->sm, csio_rns_offline);
		FUNC2(rn);

		/* FW expected to internally aborted outstanding SCSI WRs
		 * and return all SCSI WRs to host with status "ABORTED".
		 */
		break;

	case CSIO_RNFE_LOGO_RECV:
		FUNC7(&rn->sm, csio_rns_offline);

		FUNC2(rn);

		/* FW expected to internally aborted outstanding SCSI WRs
		 * and return all SCSI WRs to host with status "ABORTED".
		 */
		break;

	case CSIO_RNFE_CLOSE:
		/*
		 * Each rnode receives CLOSE event when driver is removed or
		 * device is reset
		 * Note: All outstanding IOs on remote port need to returned
		 * to uppper layer with appropriate error before sending
		 * CLOSE event
		 */
		FUNC7(&rn->sm, csio_rns_uninit);
		FUNC2(rn);
		break;

	case CSIO_RNFE_NAME_MISSING:
		FUNC7(&rn->sm, csio_rns_disappeared);
		FUNC2(rn);

		/*
		 * FW expected to internally aborted outstanding SCSI WRs
		 * and return all SCSI WRs to host with status "ABORTED".
		 */

		break;

	default:
		FUNC3(ln,
			"ssni:x%x unexp event %d recv from did:x%x "
			"in rn state[uninit]\n", FUNC4(rn), evt,
			rn->nport_id);
		FUNC0(rn, n_evt_unexp);
		break;
	}
}