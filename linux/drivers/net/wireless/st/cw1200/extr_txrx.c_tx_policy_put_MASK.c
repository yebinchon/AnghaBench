#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tx_policy_cache {int /*<<< orphan*/  lock; int /*<<< orphan*/ * cache; int /*<<< orphan*/  free; } ;
struct cw1200_common {struct tx_policy_cache tx_policy_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cw1200_common*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct tx_policy_cache*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct cw1200_common *priv, int idx)
{
	int usage, locked;
	struct tx_policy_cache *cache = &priv->tx_policy_cache;

	FUNC2(&cache->lock);
	locked = FUNC1(&cache->free);
	usage = FUNC4(cache, &cache->cache[idx]);
	if (locked && !usage) {
		/* Unlock TX queues. */
		FUNC0(priv);
	}
	FUNC3(&cache->lock);
}