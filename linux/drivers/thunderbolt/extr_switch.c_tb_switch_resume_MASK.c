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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int max_port_number; } ;
struct tb_switch {scalar_t__ uid; struct tb_port* ports; TYPE_2__ config; TYPE_1__* tb; } ;
struct tb_port {TYPE_4__* remote; TYPE_3__* xdomain; } ;
struct TYPE_8__ {struct tb_switch* sw; } ;
struct TYPE_7__ {int is_unplugged; } ;
struct TYPE_5__ {int /*<<< orphan*/  ctl; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  TB_CFG_SWITCH ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (struct tb_switch*,scalar_t__*) ; 
 int FUNC2 (struct tb_switch*) ; 
 int FUNC3 (struct tb_switch*,int) ; 
 scalar_t__ FUNC4 (struct tb_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct tb_port*,char*) ; 
 scalar_t__ FUNC6 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC7 (struct tb_switch*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct tb_switch*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC10 (struct tb_switch*,char*) ; 
 int FUNC11 (struct tb_switch*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC12 (struct tb_port*,int) ; 

int FUNC13(struct tb_switch *sw)
{
	int i, err;
	FUNC7(sw, "resuming switch\n");

	/*
	 * Check for UID of the connected switches except for root
	 * switch which we assume cannot be removed.
	 */
	if (FUNC6(sw)) {
		u64 uid;

		/*
		 * Check first that we can still read the switch config
		 * space. It may be that there is now another domain
		 * connected.
		 */
		err = FUNC0(sw->tb->ctl, FUNC6(sw));
		if (err < 0) {
			FUNC8(sw, "switch not present anymore\n");
			return err;
		}

		err = FUNC1(sw, &uid);
		if (err) {
			FUNC10(sw, "uid read failed\n");
			return err;
		}
		if (sw->uid != uid) {
			FUNC8(sw,
				"changed while suspended (uid %#llx -> %#llx)\n",
				sw->uid, uid);
			return -ENODEV;
		}
	}

	/* upload configuration */
	err = FUNC11(sw, 1 + (u32 *) &sw->config, TB_CFG_SWITCH, 1, 3);
	if (err)
		return err;

	err = FUNC2(sw);
	if (err)
		return err;

	err = FUNC3(sw, true);
	if (err)
		return err;

	/* check for surviving downstream switches */
	for (i = 1; i <= sw->config.max_port_number; i++) {
		struct tb_port *port = &sw->ports[i];

		if (!FUNC4(port) && !port->xdomain)
			continue;

		if (FUNC12(port, true) <= 0) {
			FUNC5(port,
				     "lost during suspend, disconnecting\n");
			if (FUNC4(port))
				FUNC9(port->remote->sw);
			else if (port->xdomain)
				port->xdomain->is_unplugged = true;
		} else if (FUNC4(port)) {
			if (FUNC13(port->remote->sw)) {
				FUNC5(port,
					     "lost during suspend, disconnecting\n");
				FUNC9(port->remote->sw);
			}
		}
	}
	return 0;
}