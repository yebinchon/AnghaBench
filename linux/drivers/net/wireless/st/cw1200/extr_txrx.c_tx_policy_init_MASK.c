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
struct tx_policy_cache {int /*<<< orphan*/  free; TYPE_1__* cache; int /*<<< orphan*/  used; int /*<<< orphan*/  lock; } ;
struct cw1200_common {struct tx_policy_cache tx_policy_cache; } ;
struct TYPE_2__ {int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int TX_POLICY_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tx_policy_cache*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct cw1200_common *priv)
{
	struct tx_policy_cache *cache = &priv->tx_policy_cache;
	int i;

	FUNC2(cache, 0, sizeof(*cache));

	FUNC3(&cache->lock);
	FUNC0(&cache->used);
	FUNC0(&cache->free);

	for (i = 0; i < TX_POLICY_CACHE_SIZE; ++i)
		FUNC1(&cache->cache[i].link, &cache->free);
}