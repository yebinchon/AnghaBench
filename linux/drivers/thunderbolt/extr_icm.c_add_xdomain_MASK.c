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
typedef  int /*<<< orphan*/  uuid_t ;
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct tb_xdomain {void* depth; void* link; } ;
struct tb_switch {int /*<<< orphan*/  dev; int /*<<< orphan*/  tb; } ;
struct TYPE_2__ {struct tb_xdomain* xdomain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC4 (struct tb_xdomain*) ; 
 struct tb_xdomain* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC6(struct tb_switch *sw, u64 route,
			const uuid_t *local_uuid, const uuid_t *remote_uuid,
			u8 link, u8 depth)
{
	struct tb_xdomain *xd;

	FUNC0(&sw->dev);

	xd = FUNC5(sw->tb, &sw->dev, route, local_uuid, remote_uuid);
	if (!xd)
		goto out;

	xd->link = link;
	xd->depth = depth;

	FUNC3(route, sw)->xdomain = xd;

	FUNC4(xd);

out:
	FUNC1(&sw->dev);
	FUNC2(&sw->dev);
}