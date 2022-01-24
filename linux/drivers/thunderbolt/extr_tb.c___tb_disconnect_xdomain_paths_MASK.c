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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct tb_xdomain {int /*<<< orphan*/  route; TYPE_1__ dev; } ;
struct tb_switch {int dummy; } ;
struct tb_port {int dummy; } ;
struct tb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TB_TUNNEL_DMA ; 
 int /*<<< orphan*/  FUNC0 (struct tb*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct tb_port*) ; 
 struct tb_port* FUNC1 (int /*<<< orphan*/ ,struct tb_switch*) ; 
 struct tb_switch* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct tb *tb, struct tb_xdomain *xd)
{
	struct tb_port *dst_port;
	struct tb_switch *sw;

	sw = FUNC2(xd->dev.parent);
	dst_port = FUNC1(xd->route, sw);

	/*
	 * It is possible that the tunnel was already teared down (in
	 * case of cable disconnect) so it is fine if we cannot find it
	 * here anymore.
	 */
	FUNC0(tb, TB_TUNNEL_DMA, NULL, dst_port);
}