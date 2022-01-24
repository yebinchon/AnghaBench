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
typedef  int /*<<< orphan*/  u16 ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {scalar_t__ cw_min; scalar_t__ cw_max; int /*<<< orphan*/  txop; int /*<<< orphan*/  aifs; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;
struct data_queue {int cw_min; int cw_max; int /*<<< orphan*/  txop; int /*<<< orphan*/  aifs; } ;

/* Variables and functions */
 int EINVAL ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct data_queue* FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct ieee80211_hw *hw,
		      struct ieee80211_vif *vif, u16 queue_idx,
		      const struct ieee80211_tx_queue_params *params)
{
	struct rt2x00_dev *rt2x00dev = hw->priv;
	struct data_queue *queue;

	queue = FUNC2(rt2x00dev, queue_idx);
	if (FUNC3(!queue))
		return -EINVAL;

	/*
	 * The passed variables are stored as real value ((2^n)-1).
	 * Ralink registers require to know the bit number 'n'.
	 */
	if (params->cw_min > 0)
		queue->cw_min = FUNC0(params->cw_min);
	else
		queue->cw_min = 5; /* cw_min: 2^5 = 32. */

	if (params->cw_max > 0)
		queue->cw_max = FUNC0(params->cw_max);
	else
		queue->cw_max = 10; /* cw_min: 2^10 = 1024. */

	queue->aifs = params->aifs;
	queue->txop = params->txop;

	FUNC1(rt2x00dev,
		   "Configured TX queue %d - CWmin: %d, CWmax: %d, Aifs: %d, TXop: %d\n",
		   queue_idx, queue->cw_min, queue->cw_max, queue->aifs,
		   queue->txop);

	return 0;
}