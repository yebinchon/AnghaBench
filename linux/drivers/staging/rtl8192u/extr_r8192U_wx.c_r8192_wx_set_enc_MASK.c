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
struct TYPE_2__ {int length; int flags; } ;
union iwreq_data {TYPE_1__ encoding; } ;
typedef  char u8 ;
typedef  char u32 ;
struct r8192_priv {int /*<<< orphan*/  wx_mutex; struct ieee80211_device* ieee80211; int /*<<< orphan*/  up; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ieee80211_device {char tx_keyidx; void* pairwise_key_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_SEC ; 
 int ENETDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int IW_ENCODE_INDEX ; 
 void* KEY_TYPE_WEP104 ; 
 void* KEY_TYPE_WEP40 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct ieee80211_device*,struct iw_request_info*,union iwreq_data*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char,char,void*,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev,
			    struct iw_request_info *info,
			    union iwreq_data *wrqu, char *key)
{
	struct r8192_priv *priv = FUNC2(dev);
	struct ieee80211_device *ieee = priv->ieee80211;
	int ret;
	u32 hwkey[4] = {0, 0, 0, 0};
	u8 mask = 0xff;
	u32 key_idx = 0;
	u8 zero_addr[4][6] = {	{0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
				{0x00, 0x00, 0x00, 0x00, 0x00, 0x01},
				{0x00, 0x00, 0x00, 0x00, 0x00, 0x02},
				{0x00, 0x00, 0x00, 0x00, 0x00, 0x03} };
	int i;

	if (!priv->up)
		return -ENETDOWN;

	FUNC4(&priv->wx_mutex);

	FUNC1(COMP_SEC, "Setting SW wep key");
	ret = FUNC3(priv->ieee80211, info, wrqu, key);

	FUNC5(&priv->wx_mutex);



	/* sometimes, the length is zero while we do not type key value */
	if (wrqu->encoding.length != 0) {

		for (i = 0; i < 4; i++) {
			hwkey[i] |=  key[4*i+0]&mask;
			if (i == 1 && (4*i+1) == wrqu->encoding.length)
				mask = 0x00;
			if (i == 3 && (4*i+1) == wrqu->encoding.length)
				mask = 0x00;
			hwkey[i] |= (key[4*i+1]&mask)<<8;
			hwkey[i] |= (key[4*i+2]&mask)<<16;
			hwkey[i] |= (key[4*i+3]&mask)<<24;
		}

		#define CONF_WEP40  0x4
		#define CONF_WEP104 0x14

		switch (wrqu->encoding.flags & IW_ENCODE_INDEX) {
		case 0:
			key_idx = ieee->tx_keyidx;
			break;
		case 1:
			key_idx = 0;
			break;
		case 2:
			key_idx = 1;
			break;
		case 3:
			key_idx = 2;
			break;
		case 4:
			key_idx	= 3;
			break;
		default:
			break;
		}

		if (wrqu->encoding.length == 0x5) {
			ieee->pairwise_key_type = KEY_TYPE_WEP40;
			FUNC0(dev);

			FUNC7(dev,
				key_idx,                /* EntryNo */
				key_idx,                /* KeyIndex */
				KEY_TYPE_WEP40,         /* KeyType */
				zero_addr[key_idx],
				0,                      /* DefaultKey */
				hwkey);                 /* KeyContent */

		}

		else if (wrqu->encoding.length == 0xd) {
			ieee->pairwise_key_type = KEY_TYPE_WEP104;
			FUNC0(dev);

			FUNC7(dev,
				key_idx,                /* EntryNo */
				key_idx,                /* KeyIndex */
				KEY_TYPE_WEP104,        /* KeyType */
				zero_addr[key_idx],
				0,                      /* DefaultKey */
				hwkey);                 /* KeyContent */

		} else {
			FUNC6("wrong type in WEP, not WEP40 and WEP104\n");
		}

	}

	return ret;
}