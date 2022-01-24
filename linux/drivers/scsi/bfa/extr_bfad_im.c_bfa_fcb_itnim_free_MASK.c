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
typedef  int /*<<< orphan*/  wwn_t ;
typedef  int /*<<< orphan*/  u32 ;
struct bfad_s {int dummy; } ;
struct bfad_port_s {TYPE_2__* im_port; } ;
struct bfad_itnim_s {scalar_t__ state; int queue_work; int /*<<< orphan*/  itnim_work; int /*<<< orphan*/  fcs_itnim; TYPE_2__* im_port; struct bfad_im_s* im; } ;
struct bfad_im_s {int /*<<< orphan*/  drv_workq; } ;
struct TYPE_4__ {TYPE_1__* shost; } ;
struct TYPE_3__ {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bfad_s*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ ITNIM_STATE_FREE ; 
 scalar_t__ ITNIM_STATE_OFFLINE_PENDING ; 
 scalar_t__ ITNIM_STATE_ONLINE ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct bfad_port_s* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_log_level ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

void
FUNC8(struct bfad_s *bfad, struct bfad_itnim_s *itnim_drv)
{
	struct bfad_port_s    *port;
	wwn_t wwpn;
	u32 fcid;
	char wwpn_str[32], fcid_str[16];
	struct bfad_im_s	*im = itnim_drv->im;

	/* online to free state transtion should not happen */
	FUNC1(itnim_drv->state == ITNIM_STATE_ONLINE);

	itnim_drv->queue_work = 1;
	/* offline request is not yet done, use the same request to free */
	if (itnim_drv->state == ITNIM_STATE_OFFLINE_PENDING)
		itnim_drv->queue_work = 0;

	itnim_drv->state = ITNIM_STATE_FREE;
	port = FUNC2(&itnim_drv->fcs_itnim);
	itnim_drv->im_port = port->im_port;
	wwpn = FUNC4(&itnim_drv->fcs_itnim);
	fcid = FUNC3(&itnim_drv->fcs_itnim);
	FUNC7(wwpn_str, wwpn);
	FUNC5(fcid_str, fcid);
	FUNC0(KERN_INFO, bfad, bfa_log_level,
		"ITNIM FREE scsi%d: FCID: %s WWPN: %s\n",
		port->im_port->shost->host_no,
		fcid_str, wwpn_str);

	/* ITNIM processing */
	if (itnim_drv->queue_work)
		FUNC6(im->drv_workq, &itnim_drv->itnim_work);
}