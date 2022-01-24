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
struct TYPE_4__ {TYPE_1__* ring; int /*<<< orphan*/  ref; int /*<<< orphan*/  irq; } ;
struct sock_mapping {TYPE_2__ active; int /*<<< orphan*/  list; } ;
struct pvcalls_bedata {int /*<<< orphan*/  socket_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ref; } ;

/* Variables and functions */
 int PVCALLS_RING_ORDER ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock_mapping*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sock_mapping*) ; 

__attribute__((used)) static void FUNC8(struct pvcalls_bedata *bedata,
				   struct sock_mapping *map)
{
	int i;

	FUNC7(map->active.irq, map);

	FUNC5(&bedata->socket_lock);
	if (!FUNC4(&map->list))
		FUNC3(&map->list);
	FUNC6(&bedata->socket_lock);

	for (i = 0; i < (1 << PVCALLS_RING_ORDER); i++)
		FUNC1(map->active.ring->ref[i], 0, 0);
	FUNC1(map->active.ref, 0, 0);
	FUNC0((unsigned long)map->active.ring);

	FUNC2(map);
}