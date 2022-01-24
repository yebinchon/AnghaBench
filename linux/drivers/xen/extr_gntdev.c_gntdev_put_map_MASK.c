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
struct gntdev_priv {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  event; } ;
struct gntdev_grant_map {int /*<<< orphan*/  count; scalar_t__ pages; int /*<<< orphan*/  next; TYPE_1__ notify; int /*<<< orphan*/  users; } ;

/* Variables and functions */
 int UNMAP_NOTIFY_SEND_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gntdev_grant_map*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pages_mapped ; 
 scalar_t__ populate_freeable_maps ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct gntdev_grant_map*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  use_ptemod ; 

void FUNC9(struct gntdev_priv *priv, struct gntdev_grant_map *map)
{
	if (!map)
		return;

	if (!FUNC7(&map->users))
		return;

	FUNC0(map->count, &pages_mapped);

	if (map->notify.flags & UNMAP_NOTIFY_SEND_EVENT) {
		FUNC6(map->notify.event);
		FUNC1(map->notify.event);
	}

	if (populate_freeable_maps && priv) {
		FUNC4(&priv->lock);
		FUNC3(&map->next);
		FUNC5(&priv->lock);
	}

	if (map->pages && !use_ptemod)
		FUNC8(map, 0, map->count);
	FUNC2(map);
}