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
struct wsm_tx_rate_retry_policy {int index; int flags; int /*<<< orphan*/  rate_count_indices; int /*<<< orphan*/  long_retries; int /*<<< orphan*/  short_retries; } ;
struct wsm_set_tx_rate_retry_policy {size_t num; struct wsm_tx_rate_retry_policy* tbl; } ;
struct tx_policy_cache {int /*<<< orphan*/  lock; TYPE_1__* cache; } ;
struct tx_policy {int uploaded; int /*<<< orphan*/  tbl; scalar_t__ retry_count; } ;
struct cw1200_common {int /*<<< orphan*/  long_frame_max_tx_count; int /*<<< orphan*/  short_frame_max_tx_count; struct tx_policy_cache tx_policy_cache; } ;
struct TYPE_2__ {struct tx_policy policy; } ;

/* Variables and functions */
 int TX_POLICY_CACHE_SIZE ; 
 int WSM_TX_RATE_POLICY_FLAG_COUNT_INITIAL_TRANSMIT ; 
 int WSM_TX_RATE_POLICY_FLAG_TERMINATE_WHEN_FINISHED ; 
 int /*<<< orphan*/  FUNC0 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct cw1200_common*,struct wsm_set_tx_rate_retry_policy*) ; 

__attribute__((used)) static int FUNC6(struct cw1200_common *priv)
{
	struct tx_policy_cache *cache = &priv->tx_policy_cache;
	int i;
	struct wsm_set_tx_rate_retry_policy arg = {
		.num = 0,
	};
	FUNC3(&cache->lock);

	/* Upload only modified entries. */
	for (i = 0; i < TX_POLICY_CACHE_SIZE; ++i) {
		struct tx_policy *src = &cache->cache[i].policy;
		if (src->retry_count && !src->uploaded) {
			struct wsm_tx_rate_retry_policy *dst =
				&arg.tbl[arg.num];
			dst->index = i;
			dst->short_retries = priv->short_frame_max_tx_count;
			dst->long_retries = priv->long_frame_max_tx_count;

			dst->flags = WSM_TX_RATE_POLICY_FLAG_TERMINATE_WHEN_FINISHED |
				WSM_TX_RATE_POLICY_FLAG_COUNT_INITIAL_TRANSMIT;
			FUNC1(dst->rate_count_indices, src->tbl,
			       sizeof(dst->rate_count_indices));
			src->uploaded = 1;
			++arg.num;
		}
	}
	FUNC4(&cache->lock);
	FUNC0(priv);
	FUNC2("[TX policy] Upload %d policies\n", arg.num);
	return FUNC5(priv, &arg);
}