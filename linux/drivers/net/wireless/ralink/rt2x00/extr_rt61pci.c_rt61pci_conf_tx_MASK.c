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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct rt2x00_field32 {int bit_offset; int bit_mask; } ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int dummy; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;
struct data_queue {int /*<<< orphan*/  cw_max; int /*<<< orphan*/  cw_min; int /*<<< orphan*/  aifs; int /*<<< orphan*/  txop; } ;

/* Variables and functions */
 scalar_t__ AC_TXOP_CSR0 ; 
 scalar_t__ AIFSN_CSR ; 
 scalar_t__ CWMAX_CSR ; 
 scalar_t__ CWMIN_CSR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,struct rt2x00_field32,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ieee80211_hw*,struct ieee80211_vif*,int,struct ieee80211_tx_queue_params const*) ; 
 scalar_t__ FUNC2 (struct rt2x00_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,scalar_t__,scalar_t__) ; 
 struct data_queue* FUNC4 (struct rt2x00_dev*,int) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw,
			   struct ieee80211_vif *vif, u16 queue_idx,
			   const struct ieee80211_tx_queue_params *params)
{
	struct rt2x00_dev *rt2x00dev = hw->priv;
	struct data_queue *queue;
	struct rt2x00_field32 field;
	int retval;
	u32 reg;
	u32 offset;

	/*
	 * First pass the configuration through rt2x00lib, that will
	 * update the queue settings and validate the input. After that
	 * we are free to update the registers based on the value
	 * in the queue parameter.
	 */
	retval = FUNC1(hw, vif, queue_idx, params);
	if (retval)
		return retval;

	/*
	 * We only need to perform additional register initialization
	 * for WMM queues.
	 */
	if (queue_idx >= 4)
		return 0;

	queue = FUNC4(rt2x00dev, queue_idx);

	/* Update WMM TXOP register */
	offset = AC_TXOP_CSR0 + (sizeof(u32) * (!!(queue_idx & 2)));
	field.bit_offset = (queue_idx & 1) * 16;
	field.bit_mask = 0xffff << field.bit_offset;

	reg = FUNC2(rt2x00dev, offset);
	FUNC0(&reg, field, queue->txop);
	FUNC3(rt2x00dev, offset, reg);

	/* Update WMM registers */
	field.bit_offset = queue_idx * 4;
	field.bit_mask = 0xf << field.bit_offset;

	reg = FUNC2(rt2x00dev, AIFSN_CSR);
	FUNC0(&reg, field, queue->aifs);
	FUNC3(rt2x00dev, AIFSN_CSR, reg);

	reg = FUNC2(rt2x00dev, CWMIN_CSR);
	FUNC0(&reg, field, queue->cw_min);
	FUNC3(rt2x00dev, CWMIN_CSR, reg);

	reg = FUNC2(rt2x00dev, CWMAX_CSR);
	FUNC0(&reg, field, queue->cw_max);
	FUNC3(rt2x00dev, CWMAX_CSR, reg);

	return 0;
}