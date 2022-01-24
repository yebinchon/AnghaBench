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
struct dasd_uid {int dummy; } ;
struct dasd_eckd_private {struct alias_server* lcu; } ;
struct dasd_device {int /*<<< orphan*/  alias_list; TYPE_1__* discipline; struct dasd_eckd_private* private; } ;
struct alias_server {int /*<<< orphan*/  lock; int /*<<< orphan*/  inactive_devices; int /*<<< orphan*/  lculist; int /*<<< orphan*/  lcu; int /*<<< orphan*/  server; } ;
struct alias_lcu {int /*<<< orphan*/  lock; int /*<<< orphan*/  inactive_devices; int /*<<< orphan*/  lculist; int /*<<< orphan*/  lcu; int /*<<< orphan*/  server; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  serverlist; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* get_uid ) (struct dasd_device*,struct dasd_uid*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct alias_server*) ; 
 int FUNC1 (struct alias_server*) ; 
 struct alias_server* FUNC2 (struct dasd_uid*) ; 
 struct alias_server* FUNC3 (struct dasd_uid*) ; 
 struct alias_server* FUNC4 (struct alias_server*,struct dasd_uid*) ; 
 struct alias_server* FUNC5 (struct dasd_uid*) ; 
 int /*<<< orphan*/  FUNC6 (struct alias_server*) ; 
 int /*<<< orphan*/  FUNC7 (struct alias_server*) ; 
 TYPE_2__ aliastree ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct dasd_device*,struct dasd_uid*) ; 

int FUNC14(struct dasd_device *device)
{
	struct dasd_eckd_private *private = device->private;
	unsigned long flags;
	struct alias_server *server, *newserver;
	struct alias_lcu *lcu, *newlcu;
	struct dasd_uid uid;

	device->discipline->get_uid(device, &uid);
	FUNC10(&aliastree.lock, flags);
	server = FUNC5(&uid);
	if (!server) {
		FUNC12(&aliastree.lock, flags);
		newserver = FUNC3(&uid);
		if (FUNC0(newserver))
			return FUNC1(newserver);
		FUNC10(&aliastree.lock, flags);
		server = FUNC5(&uid);
		if (!server) {
			FUNC8(&newserver->server, &aliastree.serverlist);
			server = newserver;
		} else {
			/* someone was faster */
			FUNC7(newserver);
		}
	}

	lcu = FUNC4(server, &uid);
	if (!lcu) {
		FUNC12(&aliastree.lock, flags);
		newlcu = FUNC2(&uid);
		if (FUNC0(newlcu))
			return FUNC1(newlcu);
		FUNC10(&aliastree.lock, flags);
		lcu = FUNC4(server, &uid);
		if (!lcu) {
			FUNC8(&newlcu->lcu, &server->lculist);
			lcu = newlcu;
		} else {
			/* someone was faster */
			FUNC6(newlcu);
		}
	}
	FUNC9(&lcu->lock);
	FUNC8(&device->alias_list, &lcu->inactive_devices);
	private->lcu = lcu;
	FUNC11(&lcu->lock);
	FUNC12(&aliastree.lock, flags);

	return 0;
}