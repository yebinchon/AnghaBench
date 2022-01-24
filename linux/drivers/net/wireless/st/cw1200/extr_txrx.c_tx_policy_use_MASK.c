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
struct TYPE_2__ {int /*<<< orphan*/  usage_count; } ;
struct tx_policy_cache_entry {int /*<<< orphan*/  link; TYPE_1__ policy; } ;
struct tx_policy_cache {int /*<<< orphan*/  used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC1(struct tx_policy_cache *cache,
				 struct tx_policy_cache_entry *entry)
{
	++entry->policy.usage_count;
	FUNC0(&entry->link, &cache->used);
}