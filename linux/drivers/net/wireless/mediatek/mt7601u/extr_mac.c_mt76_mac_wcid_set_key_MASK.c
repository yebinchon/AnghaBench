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
struct mt7601u_dev {int dummy; } ;
struct ieee80211_key_conf {int keyidx; int flags; } ;
typedef  int /*<<< orphan*/  key_data ;
typedef  int /*<<< orphan*/  iv_data ;
typedef  enum mt76_cipher_type { ____Placeholder_mt76_cipher_type } mt76_cipher_type ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int,int) ; 
 int IEEE80211_KEY_FLAG_PAIRWISE ; 
 int MT_CIPHER_NONE ; 
 int MT_CIPHER_TKIP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MT_WCID_ATTR_PAIRWISE ; 
 int MT_WCID_ATTR_PKEY_MODE ; 
 int MT_WCID_ATTR_PKEY_MODE_EXT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct mt7601u_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mt7601u_dev*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC8 (struct ieee80211_key_conf*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct mt7601u_dev*,int) ; 

int FUNC10(struct mt7601u_dev *dev, u8 idx,
			  struct ieee80211_key_conf *key)
{
	enum mt76_cipher_type cipher;
	u8 key_data[32];
	u8 iv_data[8];
	u32 val;

	cipher = FUNC8(key, key_data);
	if (cipher == MT_CIPHER_NONE && key)
		return -EINVAL;

	FUNC9(dev, idx);

	FUNC7(dev, FUNC3(idx), key_data, sizeof(key_data));

	FUNC4(iv_data, 0, sizeof(iv_data));
	if (key) {
		iv_data[3] = key->keyidx << 6;
		if (cipher >= MT_CIPHER_TKIP) {
			/* Note: start with 1 to comply with spec,
			 *	 (see comment on common/cmm_wpa.c:4291).
			 */
			iv_data[0] |= 1;
			iv_data[3] |= 0x20;
		}
	}
	FUNC7(dev, FUNC2(idx), iv_data, sizeof(iv_data));

	val = FUNC5(dev, FUNC1(idx));
	val &= ~MT_WCID_ATTR_PKEY_MODE & ~MT_WCID_ATTR_PKEY_MODE_EXT;
	val |= FUNC0(MT_WCID_ATTR_PKEY_MODE, cipher & 7) |
	       FUNC0(MT_WCID_ATTR_PKEY_MODE_EXT, cipher >> 3);
	val &= ~MT_WCID_ATTR_PAIRWISE;
	val |= MT_WCID_ATTR_PAIRWISE *
		!!(key && key->flags & IEEE80211_KEY_FLAG_PAIRWISE);
	FUNC6(dev, FUNC1(idx), val);

	return 0;
}