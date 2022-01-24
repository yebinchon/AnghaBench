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
struct scsi_lun {int dummy; } ;
struct TYPE_4__ {char* ptr; int Status; } ;
struct scsi_cmnd {TYPE_2__ SCp; TYPE_1__* device; int /*<<< orphan*/ * host_scribble; } ;
struct bfad_tskim_s {int dummy; } ;
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa; } ;
struct bfad_itnim_s {int /*<<< orphan*/  fcs_itnim; } ;
struct bfad_itnim_data_s {struct bfad_itnim_s* itnim; } ;
struct bfad_im_port_s {struct bfad_s* bfad; } ;
struct bfa_tskim_s {int dummy; } ;
struct bfa_itnim_s {int dummy; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
typedef  enum bfi_tskim_status { ____Placeholder_bfi_tskim_status } bfi_tskim_status ;
struct TYPE_3__ {int /*<<< orphan*/  lun; struct bfad_itnim_data_s* hostdata; struct Scsi_Host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFAD_LUN_RESET_TMO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bfad_s*,int /*<<< orphan*/ ,char*,...) ; 
 int BFI_TSKIM_STS_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FAILED ; 
 int /*<<< orphan*/  FCP_TM_LUN_RESET ; 
 int /*<<< orphan*/  IO_DONE_BIT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int SUCCESS ; 
 struct bfa_itnim_s* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_log_level ; 
 struct bfa_tskim_s* FUNC3 (int /*<<< orphan*/ *,struct bfad_tskim_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_tskim_s*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_tskim_s*,struct bfa_itnim_s*,struct scsi_lun,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct scsi_lun*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static int
FUNC11(struct scsi_cmnd *cmnd)
{
	struct Scsi_Host *shost = cmnd->device->host;
	struct bfad_im_port_s *im_port =
			(struct bfad_im_port_s *) shost->hostdata[0];
	struct bfad_itnim_data_s *itnim_data = cmnd->device->hostdata;
	struct bfad_s         *bfad = im_port->bfad;
	struct bfa_tskim_s *tskim;
	struct bfad_itnim_s   *itnim;
	struct bfa_itnim_s *bfa_itnim;
	FUNC1(wq);
	int             rc = SUCCESS;
	unsigned long   flags;
	enum bfi_tskim_status task_status;
	struct scsi_lun scsilun;

	FUNC7(&bfad->bfad_lock, flags);
	itnim = itnim_data->itnim;
	if (!itnim) {
		FUNC8(&bfad->bfad_lock, flags);
		rc = FAILED;
		goto out;
	}

	tskim = FUNC3(&bfad->bfa, (struct bfad_tskim_s *) cmnd);
	if (!tskim) {
		FUNC0(KERN_ERR, bfad, bfa_log_level,
				"LUN reset, fail to allocate tskim");
		FUNC8(&bfad->bfad_lock, flags);
		rc = FAILED;
		goto out;
	}

	/*
	 * Set host_scribble to NULL to avoid aborting a task command
	 * if happens.
	 */
	cmnd->host_scribble = NULL;
	cmnd->SCp.ptr = (char *)&wq;
	cmnd->SCp.Status = 0;
	bfa_itnim = FUNC2(&itnim->fcs_itnim);
	/*
	 * bfa_itnim can be NULL if the port gets disconnected and the bfa
	 * and fcs layers have cleaned up their nexus with the targets and
	 * the same has not been cleaned up by the shim
	 */
	if (bfa_itnim == NULL) {
		FUNC4(tskim);
		FUNC0(KERN_ERR, bfad, bfa_log_level,
			"lun reset, bfa_itnim is NULL\n");
		FUNC8(&bfad->bfad_lock, flags);
		rc = FAILED;
		goto out;
	}
	FUNC6(cmnd->device->lun, &scsilun);
	FUNC5(tskim, bfa_itnim, scsilun,
			    FCP_TM_LUN_RESET, BFAD_LUN_RESET_TMO);
	FUNC8(&bfad->bfad_lock, flags);

	FUNC10(wq, FUNC9(IO_DONE_BIT,
			(unsigned long *)&cmnd->SCp.Status));

	task_status = cmnd->SCp.Status >> 1;
	if (task_status != BFI_TSKIM_STS_OK) {
		FUNC0(KERN_ERR, bfad, bfa_log_level,
			"LUN reset failure, status: %d\n", task_status);
		rc = FAILED;
	}

out:
	return rc;
}