#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int max_port_number; } ;
struct tb_switch {int /*<<< orphan*/  dev; int /*<<< orphan*/  is_unplugged; TYPE_3__* ports; TYPE_1__ config; scalar_t__ rpm; } ;
struct TYPE_6__ {int /*<<< orphan*/ * xdomain; TYPE_2__* remote; } ;
struct TYPE_5__ {struct tb_switch* sw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC5 (struct tb_switch*,int) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC8 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct tb_switch *sw)
{
	int i;

	if (sw->rpm) {
		FUNC3(&sw->dev);
		FUNC2(&sw->dev);
	}

	/* port 0 is the switch itself and never has a remote */
	for (i = 1; i <= sw->config.max_port_number; i++) {
		if (FUNC6(&sw->ports[i])) {
			FUNC10(sw->ports[i].remote->sw);
			sw->ports[i].remote = NULL;
		} else if (sw->ports[i].xdomain) {
			FUNC9(sw->ports[i].xdomain);
			sw->ports[i].xdomain = NULL;
		}
	}

	if (!sw->is_unplugged)
		FUNC5(sw, false);
	FUNC4(sw);

	FUNC8(sw);

	if (FUNC7(sw))
		FUNC0(&sw->dev, "device disconnected\n");
	FUNC1(&sw->dev);
}