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
struct TYPE_2__ {scalar_t__ usage_count; } ;
struct tx_policy_cache_entry {TYPE_1__ policy; int /*<<< orphan*/  link; } ;
struct tx_policy_cache {int /*<<< orphan*/  lock; int /*<<< orphan*/  free; struct tx_policy_cache_entry* cache; } ;
struct cw1200_common {struct tx_policy_cache tx_policy_cache; } ;

/* Variables and functions */
 int TX_POLICY_CACHE_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC2 (struct cw1200_common*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct cw1200_common *priv)
{
	int idx, locked;
	struct tx_policy_cache *cache = &priv->tx_policy_cache;
	struct tx_policy_cache_entry *entry;

	FUNC1(priv);
	FUNC6(&cache->lock);
	locked = FUNC3(&cache->free);

	for (idx = 0; idx < TX_POLICY_CACHE_SIZE; idx++) {
		entry = &cache->cache[idx];
		/* Policy usage count should be 0 at this time as all queues
		   should be empty
		 */
		if (FUNC0(entry->policy.usage_count)) {
			entry->policy.usage_count = 0;
			FUNC4(&entry->link, &cache->free);
		}
		FUNC5(&entry->policy, 0, sizeof(entry->policy));
	}
	if (locked)
		FUNC2(priv);

	FUNC2(priv);
	FUNC7(&cache->lock);
}