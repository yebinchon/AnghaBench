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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR16 ; 
 int /*<<< orphan*/  CSR16_LOW_TSFTIMER ; 
 int /*<<< orphan*/  CSR17 ; 
 int /*<<< orphan*/  CSR17_HIGH_TSFTIMER ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC2(struct ieee80211_hw *hw,
			     struct ieee80211_vif *vif)
{
	struct rt2x00_dev *rt2x00dev = hw->priv;
	u64 tsf;
	u32 reg;

	reg = FUNC1(rt2x00dev, CSR17);
	tsf = (u64) FUNC0(reg, CSR17_HIGH_TSFTIMER) << 32;
	reg = FUNC1(rt2x00dev, CSR16);
	tsf |= FUNC0(reg, CSR16_LOW_TSFTIMER);

	return tsf;
}