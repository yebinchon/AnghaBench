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
typedef  int u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mt7601u_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int txop; int aifs; scalar_t__ cw_max; scalar_t__ cw_min; } ;
struct ieee80211_hw {struct mt7601u_dev* priv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MT_EDCA_CFG_AIFSN ; 
 int /*<<< orphan*/  MT_EDCA_CFG_CWMAX ; 
 int /*<<< orphan*/  MT_EDCA_CFG_CWMIN ; 
 int /*<<< orphan*/  MT_EDCA_CFG_TXOP ; 
 int /*<<< orphan*/  MT_WMM_AIFSN ; 
 int MT_WMM_AIFSN_MASK ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  MT_WMM_CWMAX ; 
 int MT_WMM_CWMAX_MASK ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  MT_WMM_CWMIN ; 
 int MT_WMM_CWMIN_MASK ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int MT_WMM_TXOP_MASK ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (scalar_t__) ; 
 int FUNC9 (struct mt7601u_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
		    u16 queue, const struct ieee80211_tx_queue_params *params)
{
	struct mt7601u_dev *dev = hw->priv;
	u8 cw_min = 5, cw_max = 10, hw_q = FUNC11(queue);
	u32 val;

	/* TODO: should we do funny things with the parameters?
	 *	 See what mt7601u_set_default_edca() used to do in init.c.
	 */

	if (params->cw_min)
		cw_min = FUNC8(params->cw_min);
	if (params->cw_max)
		cw_max = FUNC8(params->cw_max);

	FUNC7(params->txop > 0xff);
	FUNC7(params->aifs > 0xf);
	FUNC7(cw_min > 0xf);
	FUNC7(cw_max > 0xf);

	val = FUNC0(MT_EDCA_CFG_AIFSN, params->aifs) |
	      FUNC0(MT_EDCA_CFG_CWMIN, cw_min) |
	      FUNC0(MT_EDCA_CFG_CWMAX, cw_max);
	/* TODO: based on user-controlled EnableTxBurst var vendor drv sets
	 *	 a really long txop on AC0 (see connect.c:2009) but only on
	 *	 connect? When not connected should be 0.
	 */
	if (!hw_q)
		val |= 0x60;
	else
		val |= FUNC0(MT_EDCA_CFG_TXOP, params->txop);
	FUNC10(dev, FUNC1(hw_q), val);

	val = FUNC9(dev, FUNC5(hw_q));
	val &= ~(MT_WMM_TXOP_MASK << FUNC6(hw_q));
	val |= params->txop << FUNC6(hw_q);
	FUNC10(dev, FUNC5(hw_q), val);

	val = FUNC9(dev, MT_WMM_AIFSN);
	val &= ~(MT_WMM_AIFSN_MASK << FUNC2(hw_q));
	val |= params->aifs << FUNC2(hw_q);
	FUNC10(dev, MT_WMM_AIFSN, val);

	val = FUNC9(dev, MT_WMM_CWMIN);
	val &= ~(MT_WMM_CWMIN_MASK << FUNC4(hw_q));
	val |= cw_min << FUNC4(hw_q);
	FUNC10(dev, MT_WMM_CWMIN, val);

	val = FUNC9(dev, MT_WMM_CWMAX);
	val &= ~(MT_WMM_CWMAX_MASK << FUNC3(hw_q));
	val |= cw_max << FUNC3(hw_q);
	FUNC10(dev, MT_WMM_CWMAX, val);

	return 0;
}