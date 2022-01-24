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
struct TYPE_3__ {void* out; void* in; } ;
struct TYPE_4__ {TYPE_1__ data; struct pvcalls_data_intf* ring; } ;
struct sock_mapping {TYPE_2__ active; } ;
struct pvcalls_data_intf {int /*<<< orphan*/  ring_order; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  PVCALLS_RING_ORDER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock_mapping*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct sock_mapping *map)
{
	void *bytes;

	map->active.ring = (struct pvcalls_data_intf *)
		FUNC3(GFP_KERNEL);
	if (!map->active.ring)
		goto out;

	map->active.ring->ring_order = PVCALLS_RING_ORDER;
	bytes = (void *)FUNC1(GFP_KERNEL | __GFP_ZERO,
					PVCALLS_RING_ORDER);
	if (!bytes)
		goto out;

	map->active.data.in = bytes;
	map->active.data.out = bytes +
		FUNC0(PVCALLS_RING_ORDER);

	return 0;

out:
	FUNC2(map);
	return -ENOMEM;
}