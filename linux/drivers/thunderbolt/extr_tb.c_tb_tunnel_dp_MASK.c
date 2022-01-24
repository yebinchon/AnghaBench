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
struct tb_tunnel {int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct tb_switch {TYPE_1__ dev; } ;
struct tb_port {struct tb_switch* sw; } ;
struct tb_cm {int /*<<< orphan*/  tunnel_list; } ;
struct tb {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  TB_TYPE_DP_HDMI_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct tb_port* FUNC1 (struct tb_switch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tb_port*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tb_port*,char*) ; 
 scalar_t__ FUNC4 (struct tb_port*) ; 
 struct tb_cm* FUNC5 (struct tb*) ; 
 struct tb_switch* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct tb_tunnel*) ; 
 struct tb_tunnel* FUNC8 (struct tb*,struct tb_port*,struct tb_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct tb_tunnel*) ; 

__attribute__((used)) static int FUNC10(struct tb *tb, struct tb_port *out)
{
	struct tb_cm *tcm = FUNC5(tb);
	struct tb_switch *sw = out->sw;
	struct tb_tunnel *tunnel;
	struct tb_port *in;

	if (FUNC4(out))
		return 0;

	do {
		sw = FUNC6(sw->dev.parent);
		if (!sw)
			return 0;
		in = FUNC1(sw, TB_TYPE_DP_HDMI_IN);
	} while (!in);

	tunnel = FUNC8(tb, in, out);
	if (!tunnel) {
		FUNC2(out, "DP tunnel allocation failed\n");
		return -ENOMEM;
	}

	if (FUNC7(tunnel)) {
		FUNC3(out, "DP tunnel activation failed, aborting\n");
		FUNC9(tunnel);
		return -EIO;
	}

	FUNC0(&tunnel->list, &tcm->tunnel_list);
	return 0;
}