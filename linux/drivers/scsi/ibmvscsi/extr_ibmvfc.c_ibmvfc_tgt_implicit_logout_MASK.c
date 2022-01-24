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
struct ibmvfc_target {int /*<<< orphan*/  kref; int /*<<< orphan*/  scsi_id; struct ibmvfc_host* vhost; } ;
struct TYPE_4__ {int /*<<< orphan*/  length; void* opcode; void* version; } ;
struct ibmvfc_implicit_logout {int /*<<< orphan*/  old_scsi_id; TYPE_2__ common; } ;
struct ibmvfc_host {scalar_t__ discovery_threads; } ;
struct TYPE_3__ {struct ibmvfc_implicit_logout implicit_logout; } ;
struct ibmvfc_event {TYPE_1__ iu; struct ibmvfc_target* tgt; } ;

/* Variables and functions */
 int IBMVFC_IMPLICIT_LOGOUT ; 
 int /*<<< orphan*/  IBMVFC_MAD_FORMAT ; 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_INIT_WAIT ; 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_timeout ; 
 scalar_t__ disc_threads ; 
 struct ibmvfc_event* FUNC3 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct ibmvfc_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_release_tgt ; 
 scalar_t__ FUNC5 (struct ibmvfc_event*,struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_tgt_implicit_logout_done ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ibmvfc_implicit_logout*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ibmvfc_target*,char*) ; 

__attribute__((used)) static void FUNC11(struct ibmvfc_target *tgt)
{
	struct ibmvfc_implicit_logout *mad;
	struct ibmvfc_host *vhost = tgt->vhost;
	struct ibmvfc_event *evt;

	if (vhost->discovery_threads >= disc_threads)
		return;

	FUNC7(&tgt->kref);
	evt = FUNC3(vhost);
	vhost->discovery_threads++;
	FUNC4(evt, ibmvfc_tgt_implicit_logout_done, IBMVFC_MAD_FORMAT);
	evt->tgt = tgt;
	mad = &evt->iu.implicit_logout;
	FUNC9(mad, 0, sizeof(*mad));
	mad->common.version = FUNC1(1);
	mad->common.opcode = FUNC1(IBMVFC_IMPLICIT_LOGOUT);
	mad->common.length = FUNC0(sizeof(*mad));
	mad->old_scsi_id = FUNC2(tgt->scsi_id);

	FUNC6(tgt, IBMVFC_TGT_ACTION_INIT_WAIT);
	if (FUNC5(evt, vhost, default_timeout)) {
		vhost->discovery_threads--;
		FUNC6(tgt, IBMVFC_TGT_ACTION_NONE);
		FUNC8(&tgt->kref, ibmvfc_release_tgt);
	} else
		FUNC10(tgt, "Sent Implicit Logout\n");
}