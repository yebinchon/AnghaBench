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
typedef  int /*<<< orphan*/  uint8_t ;
struct vscsifrnt_shadow {int rslt_reset; int wait_reset; int /*<<< orphan*/  rqid; int /*<<< orphan*/  wq_reset; int /*<<< orphan*/  ref_rqid; struct scsi_cmnd* sc; int /*<<< orphan*/  act; } ;
struct vscsifrnt_info {int wait_ring_available; int /*<<< orphan*/  shadow_lock; int /*<<< orphan*/  wq_sync; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int FAILED ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int RSLT_RESET_ERR ; 
 int RSLT_RESET_WAITING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vscsifrnt_shadow*) ; 
 struct vscsifrnt_shadow* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct vscsifrnt_shadow* FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct vscsifrnt_info*,struct vscsifrnt_shadow*) ; 
 scalar_t__ FUNC5 (struct vscsifrnt_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct vscsifrnt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vscsifrnt_info*) ; 
 struct vscsifrnt_info* FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct scsi_cmnd *sc, uint8_t act)
{
	struct Scsi_Host *host = sc->device->host;
	struct vscsifrnt_info *info = FUNC8(host);
	struct vscsifrnt_shadow *shadow, *s = FUNC3(sc);
	int err = 0;

	shadow = FUNC2(sizeof(*shadow), GFP_NOIO);
	if (!shadow)
		return FAILED;

	shadow->act = act;
	shadow->rslt_reset = RSLT_RESET_WAITING;
	shadow->sc = sc;
	shadow->ref_rqid = s->rqid;
	FUNC0(&shadow->wq_reset);

	FUNC10(host->host_lock);

	for (;;) {
		if (FUNC5(info))
			goto fail;

		if (!FUNC4(info, shadow))
			break;

		FUNC7(info);
		if (err)
			goto fail;
		info->wait_ring_available = 1;
		FUNC12(host->host_lock);
		err = FUNC13(info->wq_sync,
					       !info->wait_ring_available);
		FUNC10(host->host_lock);
	}

	FUNC12(host->host_lock);
	err = FUNC13(shadow->wq_reset, shadow->wait_reset);
	FUNC10(host->host_lock);

	if (!err) {
		err = shadow->rslt_reset;
		FUNC6(info, shadow->rqid);
		FUNC1(shadow);
	} else {
		FUNC9(&info->shadow_lock);
		shadow->rslt_reset = RSLT_RESET_ERR;
		FUNC11(&info->shadow_lock);
		err = FAILED;
	}

	FUNC7(info);
	FUNC12(host->host_lock);
	return err;

fail:
	FUNC12(host->host_lock);
	FUNC1(shadow);
	return FAILED;
}