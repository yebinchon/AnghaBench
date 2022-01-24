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
struct TYPE_3__ {int /*<<< orphan*/  list; int /*<<< orphan*/  lock; int /*<<< orphan*/  count; } ;
struct TYPE_4__ {TYPE_1__ cache; } ;
struct xenvif {TYPE_2__ hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ xenvif_hash_cache_size ; 

void FUNC3(struct xenvif *vif)
{
	if (xenvif_hash_cache_size == 0)
		return;

	FUNC0(vif->hash.cache.count);

	FUNC2(&vif->hash.cache.lock);
	FUNC1(&vif->hash.cache.list);
}