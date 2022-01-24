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
struct tb_xdomain {int /*<<< orphan*/  receive_path; int /*<<< orphan*/  receive_ring; int /*<<< orphan*/  transmit_path; int /*<<< orphan*/  transmit_ring; int /*<<< orphan*/  route; TYPE_1__ dev; } ;
struct tb_tunnel {int /*<<< orphan*/  list; } ;
struct tb_switch {int dummy; } ;
struct tb_port {int dummy; } ;
struct tb_cm {int /*<<< orphan*/  tunnel_list; } ;
struct tb {int /*<<< orphan*/  lock; int /*<<< orphan*/  root_switch; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  TB_TYPE_NHI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tb_port* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tb_port* FUNC4 (int /*<<< orphan*/ ,struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC5 (struct tb_port*,char*) ; 
 struct tb_cm* FUNC6 (struct tb*) ; 
 struct tb_switch* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct tb_tunnel*) ; 
 struct tb_tunnel* FUNC9 (struct tb*,struct tb_port*,struct tb_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tb_tunnel*) ; 

__attribute__((used)) static int FUNC11(struct tb *tb, struct tb_xdomain *xd)
{
	struct tb_cm *tcm = FUNC6(tb);
	struct tb_port *nhi_port, *dst_port;
	struct tb_tunnel *tunnel;
	struct tb_switch *sw;

	sw = FUNC7(xd->dev.parent);
	dst_port = FUNC4(xd->route, sw);
	nhi_port = FUNC3(tb->root_switch, TB_TYPE_NHI);

	FUNC1(&tb->lock);
	tunnel = FUNC9(tb, nhi_port, dst_port, xd->transmit_ring,
				     xd->transmit_path, xd->receive_ring,
				     xd->receive_path);
	if (!tunnel) {
		FUNC2(&tb->lock);
		return -ENOMEM;
	}

	if (FUNC8(tunnel)) {
		FUNC5(nhi_port,
			     "DMA tunnel activation failed, aborting\n");
		FUNC10(tunnel);
		FUNC2(&tb->lock);
		return -EIO;
	}

	FUNC0(&tunnel->list, &tcm->tunnel_list);
	FUNC2(&tb->lock);
	return 0;
}