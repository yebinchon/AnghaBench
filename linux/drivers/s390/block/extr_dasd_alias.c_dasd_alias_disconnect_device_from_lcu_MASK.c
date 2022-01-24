#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dasd_uid {int dummy; } ;
struct dasd_eckd_private {struct alias_lcu* lcu; } ;
struct dasd_device {int /*<<< orphan*/  alias_list; TYPE_1__* discipline; struct dasd_eckd_private* private; } ;
struct alias_server {int /*<<< orphan*/  server; int /*<<< orphan*/  lculist; } ;
struct TYPE_7__ {struct dasd_device* device; int /*<<< orphan*/  dwork; } ;
struct TYPE_6__ {struct dasd_device* device; int /*<<< orphan*/  worker; } ;
struct alias_lcu {int /*<<< orphan*/  lock; int /*<<< orphan*/  lcu; int /*<<< orphan*/  inactive_devices; int /*<<< orphan*/  active_devices; int /*<<< orphan*/  grouplist; TYPE_3__ ruac_data; TYPE_2__ suc_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* get_uid ) (struct dasd_device*,struct dasd_uid*) ;} ;

/* Variables and functions */
 struct alias_server* FUNC0 (struct dasd_uid*) ; 
 int /*<<< orphan*/  FUNC1 (struct alias_lcu*) ; 
 int /*<<< orphan*/  FUNC2 (struct alias_server*) ; 
 int /*<<< orphan*/  FUNC3 (struct alias_lcu*,int /*<<< orphan*/ *) ; 
 TYPE_4__ aliastree ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct dasd_device*,struct dasd_uid*) ; 

void FUNC15(struct dasd_device *device)
{
	struct dasd_eckd_private *private = device->private;
	unsigned long flags;
	struct alias_lcu *lcu;
	struct alias_server *server;
	int was_pending;
	struct dasd_uid uid;

	lcu = private->lcu;
	/* nothing to do if already disconnected */
	if (!lcu)
		return;
	device->discipline->get_uid(device, &uid);
	FUNC11(&lcu->lock, flags);
	FUNC8(&device->alias_list);
	/* make sure that the workers don't use this device */
	if (device == lcu->suc_data.device) {
		FUNC13(&lcu->lock, flags);
		FUNC5(&lcu->suc_data.worker);
		FUNC11(&lcu->lock, flags);
		if (device == lcu->suc_data.device) {
			FUNC6(device);
			lcu->suc_data.device = NULL;
		}
	}
	was_pending = 0;
	if (device == lcu->ruac_data.device) {
		FUNC13(&lcu->lock, flags);
		was_pending = 1;
		FUNC4(&lcu->ruac_data.dwork);
		FUNC11(&lcu->lock, flags);
		if (device == lcu->ruac_data.device) {
			FUNC6(device);
			lcu->ruac_data.device = NULL;
		}
	}
	private->lcu = NULL;
	FUNC13(&lcu->lock, flags);

	FUNC11(&aliastree.lock, flags);
	FUNC10(&lcu->lock);
	if (FUNC9(&lcu->grouplist) &&
	    FUNC9(&lcu->active_devices) &&
	    FUNC9(&lcu->inactive_devices)) {
		FUNC7(&lcu->lcu);
		FUNC12(&lcu->lock);
		FUNC1(lcu);
		lcu = NULL;
	} else {
		if (was_pending)
			FUNC3(lcu, NULL);
		FUNC12(&lcu->lock);
	}
	server = FUNC0(&uid);
	if (server && FUNC9(&server->lculist)) {
		FUNC7(&server->server);
		FUNC2(server);
	}
	FUNC13(&aliastree.lock, flags);
}