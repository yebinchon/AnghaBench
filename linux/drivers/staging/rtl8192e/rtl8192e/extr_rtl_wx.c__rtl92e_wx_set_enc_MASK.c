#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; int length; } ;
union iwreq_data {TYPE_2__ encoding; } ;
typedef  char u8 ;
typedef  char u32 ;
struct sw_cam_table {int dummy; } ;
struct TYPE_3__ {char tx_keyidx; } ;
struct rtllib_device {int wx_set_enc; int /*<<< orphan*/  pairwise_key_type; TYPE_1__ crypt_info; int /*<<< orphan*/  swcamtable; int /*<<< orphan*/  group_key_type; int /*<<< orphan*/  ips_mutex; } ;
struct r8192_priv {struct rtllib_device* rtllib; int /*<<< orphan*/  wx_mutex; int /*<<< orphan*/  up; scalar_t__ bHwRadioOff; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_SEC ; 
 int ENETDOWN ; 
 int IW_ENCODE_DISABLED ; 
 int IW_ENCODE_INDEX ; 
 int /*<<< orphan*/  KEY_TYPE_NA ; 
 int /*<<< orphan*/  KEY_TYPE_WEP104 ; 
 int /*<<< orphan*/  KEY_TYPE_WEP40 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char,char,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char,char,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct r8192_priv* FUNC10 (struct net_device*) ; 
 int FUNC11 (struct rtllib_device*,struct iw_request_info*,union iwreq_data*,char*) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev,
			      struct iw_request_info *info,
			      union iwreq_data *wrqu, char *key)
{
	struct r8192_priv *priv = FUNC10(dev);
	int ret;

	struct rtllib_device *ieee = priv->rtllib;
	u32 hwkey[4] = {0, 0, 0, 0};
	u8 mask = 0xff;
	u32 key_idx = 0;
	u8 zero_addr[4][6] = {{0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
			     {0x00, 0x00, 0x00, 0x00, 0x00, 0x01},
			     {0x00, 0x00, 0x00, 0x00, 0x00, 0x02},
			     {0x00, 0x00, 0x00, 0x00, 0x00, 0x03} };
	int i;

	if (priv->bHwRadioOff)
		return 0;

	if (!priv->up)
		return -ENETDOWN;

	priv->rtllib->wx_set_enc = 1;
	FUNC2(&priv->rtllib->ips_mutex);
	FUNC7(dev);
	FUNC3(&priv->rtllib->ips_mutex);
	FUNC2(&priv->wx_mutex);

	FUNC0(COMP_SEC, "Setting SW wep key");
	ret = FUNC11(priv->rtllib, info, wrqu, key);
	FUNC3(&priv->wx_mutex);

	if (wrqu->encoding.flags & IW_ENCODE_DISABLED) {
		ieee->pairwise_key_type = ieee->group_key_type = KEY_TYPE_NA;
		FUNC5(dev);
		FUNC1(priv->rtllib->swcamtable, 0,
		       sizeof(struct sw_cam_table) * 32);
		goto end_hw_sec;
	}
	if (wrqu->encoding.length != 0) {
		for (i = 0; i < 4; i++) {
			hwkey[i] |=  key[4 * i + 0] & mask;
			if (i == 1 && (4 * i + 1) == wrqu->encoding.length)
				mask = 0x00;
			if (i == 3 && (4 * i + 1) == wrqu->encoding.length)
				mask = 0x00;
			hwkey[i] |= (key[4 * i + 1] & mask) << 8;
			hwkey[i] |= (key[4 * i + 2] & mask) << 16;
			hwkey[i] |= (key[4 * i + 3] & mask) << 24;
		}

		switch (wrqu->encoding.flags & IW_ENCODE_INDEX) {
		case 0:
			key_idx = ieee->crypt_info.tx_keyidx;
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
			FUNC6(dev);
		}

		else if (wrqu->encoding.length == 0xd) {
			ieee->pairwise_key_type = KEY_TYPE_WEP104;
			FUNC6(dev);
			FUNC8(dev, key_idx, key_idx, KEY_TYPE_WEP104,
				       zero_addr[key_idx], 0, hwkey);
			FUNC9(dev, key_idx, key_idx, KEY_TYPE_WEP104,
					 zero_addr[key_idx], 0, hwkey, 0);
		} else {
			FUNC4(dev,
				    "wrong type in WEP, not WEP40 and WEP104\n");
		}
	}

end_hw_sec:
	priv->rtllib->wx_set_enc = 0;
	return ret;
}