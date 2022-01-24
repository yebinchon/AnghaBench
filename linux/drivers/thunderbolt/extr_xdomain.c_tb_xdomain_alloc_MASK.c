#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uuid_t ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_6__ {int /*<<< orphan*/  groups; int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; int /*<<< orphan*/  parent; } ;
struct tb_xdomain {int needs_uuid; struct tb_xdomain* local_uuid; TYPE_1__ dev; void* remote_uuid; int /*<<< orphan*/  properties_changed_work; int /*<<< orphan*/  get_properties_work; int /*<<< orphan*/  get_uuid_work; int /*<<< orphan*/  lock; int /*<<< orphan*/  service_ids; int /*<<< orphan*/  route; struct tb* tb; } ;
struct tb {int /*<<< orphan*/  index; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tb_xdomain*) ; 
 void* FUNC6 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 struct tb_xdomain* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  tb_bus_type ; 
 int /*<<< orphan*/  tb_xdomain_get_properties ; 
 int /*<<< orphan*/  tb_xdomain_get_uuid ; 
 int /*<<< orphan*/  tb_xdomain_properties_changed ; 
 int /*<<< orphan*/  tb_xdomain_type ; 
 int /*<<< orphan*/  xdomain_attr_groups ; 

struct tb_xdomain *FUNC12(struct tb *tb, struct device *parent,
				    u64 route, const uuid_t *local_uuid,
				    const uuid_t *remote_uuid)
{
	struct tb_xdomain *xd;

	xd = FUNC7(sizeof(*xd), GFP_KERNEL);
	if (!xd)
		return NULL;

	xd->tb = tb;
	xd->route = route;
	FUNC4(&xd->service_ids);
	FUNC8(&xd->lock);
	FUNC0(&xd->get_uuid_work, tb_xdomain_get_uuid);
	FUNC0(&xd->get_properties_work, tb_xdomain_get_properties);
	FUNC0(&xd->properties_changed_work,
			  tb_xdomain_properties_changed);

	xd->local_uuid = FUNC6(local_uuid, sizeof(uuid_t), GFP_KERNEL);
	if (!xd->local_uuid)
		goto err_free;

	if (remote_uuid) {
		xd->remote_uuid = FUNC6(remote_uuid, sizeof(uuid_t),
					  GFP_KERNEL);
		if (!xd->remote_uuid)
			goto err_free_local_uuid;
	} else {
		xd->needs_uuid = true;
	}

	FUNC2(&xd->dev);
	xd->dev.parent = FUNC3(parent);
	xd->dev.bus = &tb_bus_type;
	xd->dev.type = &tb_xdomain_type;
	xd->dev.groups = xdomain_attr_groups;
	FUNC1(&xd->dev, "%u-%llx", tb->index, route);

	/*
	 * This keeps the DMA powered on as long as we have active
	 * connection to another host.
	 */
	FUNC11(&xd->dev);
	FUNC10(&xd->dev);
	FUNC9(&xd->dev);

	return xd;

err_free_local_uuid:
	FUNC5(xd->local_uuid);
err_free:
	FUNC5(xd);

	return NULL;
}