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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct mt7601u_dev {int dummy; } ;
struct ieee80211_key_conf {int dummy; } ;
typedef  int /*<<< orphan*/  key_data ;
typedef  enum mt76_cipher_type { ____Placeholder_mt76_cipher_type } mt76_cipher_type ;

/* Variables and functions */
 int EINVAL ; 
 int MT_CIPHER_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MT_SKEY_MODE_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct ieee80211_key_conf*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct mt7601u_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct mt7601u_dev *dev, u8 vif_idx, u8 key_idx,
			      struct ieee80211_key_conf *key)
{
	enum mt76_cipher_type cipher;
	u8 key_data[32];
	u32 val;

	cipher = FUNC4(key, key_data);
	if (cipher == MT_CIPHER_NONE && key)
		return -EINVAL;

	FUNC7(dev, vif_idx, key_idx);

	FUNC3(dev, FUNC0(vif_idx, key_idx),
			key_data, sizeof(key_data));

	val = FUNC5(dev, FUNC1(vif_idx));
	val &= ~(MT_SKEY_MODE_MASK << FUNC2(vif_idx, key_idx));
	val |= cipher << FUNC2(vif_idx, key_idx);
	FUNC6(dev, FUNC1(vif_idx), val);

	return 0;
}