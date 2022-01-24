#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tb_regs_switch_header {int dummy; } ;
struct tb_regs_port_header {int dummy; } ;
struct tb_regs_hop {int dummy; } ;
struct tb_nhi {TYPE_1__* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  groups; int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; int /*<<< orphan*/ * parent; } ;
struct tb {scalar_t__ index; TYPE_2__ dev; int /*<<< orphan*/  wq; int /*<<< orphan*/  lock; struct tb_nhi* nhi; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  domain_attr_groups ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct tb*) ; 
 struct tb* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tb_bus_type ; 
 int /*<<< orphan*/  tb_domain_ida ; 
 int /*<<< orphan*/  tb_domain_type ; 

struct tb *FUNC9(struct tb_nhi *nhi, size_t privsize)
{
	struct tb *tb;

	/*
	 * Make sure the structure sizes map with that the hardware
	 * expects because bit-fields are being used.
	 */
	FUNC0(sizeof(struct tb_regs_switch_header) != 5 * 4);
	FUNC0(sizeof(struct tb_regs_port_header) != 8 * 4);
	FUNC0(sizeof(struct tb_regs_hop) != 2 * 4);

	tb = FUNC7(sizeof(*tb) + privsize, GFP_KERNEL);
	if (!tb)
		return NULL;

	tb->nhi = nhi;
	FUNC8(&tb->lock);

	tb->index = FUNC4(&tb_domain_ida, 0, 0, GFP_KERNEL);
	if (tb->index < 0)
		goto err_free;

	tb->wq = FUNC1("thunderbolt%d", 0, tb->index);
	if (!tb->wq)
		goto err_remove_ida;

	tb->dev.parent = &nhi->pdev->dev;
	tb->dev.bus = &tb_bus_type;
	tb->dev.type = &tb_domain_type;
	tb->dev.groups = domain_attr_groups;
	FUNC2(&tb->dev, "domain%d", tb->index);
	FUNC3(&tb->dev);

	return tb;

err_remove_ida:
	FUNC5(&tb_domain_ida, tb->index);
err_free:
	FUNC6(tb);

	return NULL;
}