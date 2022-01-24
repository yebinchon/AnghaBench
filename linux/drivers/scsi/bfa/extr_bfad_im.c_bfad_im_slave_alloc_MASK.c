#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_device {scalar_t__ lun; int sdev_bflags; scalar_t__ hostdata; } ;
struct fc_rport {scalar_t__ dd_data; } ;
struct bfad_itnim_data_s {TYPE_1__* itnim; } ;
struct bfa_s {int dummy; } ;
struct TYPE_4__ {struct bfa_s* bfa; } ;
struct TYPE_3__ {TYPE_2__* bfa_itnim; } ;

/* Variables and functions */
 scalar_t__ BFA_LUNMASK_ENABLED ; 
 scalar_t__ BFA_STATUS_OK ; 
 int BLIST_NOREPORTLUN ; 
 int BLIST_SPARSELUN ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (struct bfa_s*) ; 
 scalar_t__ FUNC1 (struct scsi_device*,struct fc_rport*) ; 
 scalar_t__ FUNC2 (struct fc_rport*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*) ; 
 struct fc_rport* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct scsi_device *sdev)
{
	struct fc_rport *rport = FUNC4(FUNC3(sdev));
	struct bfad_itnim_data_s *itnim_data;
	struct bfa_s *bfa;

	if (!rport || FUNC2(rport))
		return -ENXIO;

	itnim_data = (struct bfad_itnim_data_s *) rport->dd_data;
	bfa = itnim_data->itnim->bfa_itnim->bfa;

	if (FUNC0(bfa) == BFA_LUNMASK_ENABLED) {
		/*
		 * We should not mask LUN 0 - since this will translate
		 * to no LUN / TARGET for SCSI ml resulting no scan.
		 */
		if (sdev->lun == 0) {
			sdev->sdev_bflags |= BLIST_NOREPORTLUN |
					     BLIST_SPARSELUN;
			goto done;
		}

		/*
		 * Query LUN Mask configuration - to expose this LUN
		 * to the SCSI mid-layer or to mask it.
		 */
		if (FUNC1(sdev, rport) !=
							BFA_STATUS_OK)
			return -ENXIO;
	}
done:
	sdev->hostdata = rport->dd_data;

	return 0;
}