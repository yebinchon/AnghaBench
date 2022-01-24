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
struct iw_point {int flags; } ;
union iwreq_data {struct iw_point encoding; } ;
struct rtllib_security {int flags; int enabled; int active_key; scalar_t__* key_sizes; int /*<<< orphan*/  level; } ;
struct TYPE_2__ {int tx_keyidx; struct lib80211_crypt_data** crypt; } ;
struct rtllib_device {scalar_t__ iw_mode; struct net_device* dev; scalar_t__ (* reset_port ) (struct net_device*) ;scalar_t__ reset_on_keychange; int /*<<< orphan*/  (* set_security ) (struct net_device*,struct rtllib_security*) ;TYPE_1__ crypt_info; } ;
struct net_device {int dummy; } ;
struct lib80211_crypto_ops {scalar_t__ (* set_key ) (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* init ) (int) ;int /*<<< orphan*/  owner; } ;
struct lib80211_crypt_data {int /*<<< orphan*/ * priv; struct lib80211_crypto_ops* ops; } ;
struct iw_request_info {int dummy; } ;
struct iw_encode_ext {int ext_flags; int alg; scalar_t__ key_len; int /*<<< orphan*/  rx_seq; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  IW_ENCODE_ALG_CCMP 130 
 int IW_ENCODE_ALG_NONE ; 
#define  IW_ENCODE_ALG_TKIP 129 
#define  IW_ENCODE_ALG_WEP 128 
 int IW_ENCODE_DISABLED ; 
 int IW_ENCODE_EXT_GROUP_KEY ; 
 int IW_ENCODE_EXT_SET_TX_KEY ; 
 int IW_ENCODE_INDEX ; 
 scalar_t__ IW_MODE_INFRA ; 
 int NUM_WEP_KEYS ; 
 int SEC_ACTIVE_KEY ; 
 int SEC_ENABLED ; 
 int SEC_LEVEL ; 
 int /*<<< orphan*/  SEC_LEVEL_0 ; 
 int /*<<< orphan*/  SEC_LEVEL_1 ; 
 int /*<<< orphan*/  SEC_LEVEL_2 ; 
 int /*<<< orphan*/  SEC_LEVEL_3 ; 
 int /*<<< orphan*/  FUNC0 (struct lib80211_crypt_data*) ; 
 struct lib80211_crypt_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct lib80211_crypt_data**) ; 
 struct lib80211_crypto_ops* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,struct rtllib_security*) ; 
 scalar_t__ FUNC12 (struct net_device*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(struct rtllib_device *ieee,
			       struct iw_request_info *info,
			       union iwreq_data *wrqu, char *extra)
{
	int ret = 0;
	struct net_device *dev = ieee->dev;
	struct iw_point *encoding = &wrqu->encoding;
	struct iw_encode_ext *ext = (struct iw_encode_ext *)extra;
	int i, idx;
	int group_key = 0;
	const char *alg, *module;
	struct lib80211_crypto_ops *ops;
	struct lib80211_crypt_data **crypt;

	struct rtllib_security sec = {
		.flags = 0,
	};
	idx = encoding->flags & IW_ENCODE_INDEX;
	if (idx) {
		if (idx < 1 || idx > NUM_WEP_KEYS)
			return -EINVAL;
		idx--;
	} else {
		idx = ieee->crypt_info.tx_keyidx;
	}
	if (ext->ext_flags & IW_ENCODE_EXT_GROUP_KEY) {
		crypt = &ieee->crypt_info.crypt[idx];
		group_key = 1;
	} else {
		/* some Cisco APs use idx>0 for unicast in dynamic WEP */
		if (idx != 0 && ext->alg != IW_ENCODE_ALG_WEP)
			return -EINVAL;
		if (ieee->iw_mode == IW_MODE_INFRA)
			crypt = &ieee->crypt_info.crypt[idx];
		else
			return -EINVAL;
	}

	sec.flags |= SEC_ENABLED;
	if ((encoding->flags & IW_ENCODE_DISABLED) ||
	    ext->alg == IW_ENCODE_ALG_NONE) {
		if (*crypt)
			FUNC2(&ieee->crypt_info, crypt);

		for (i = 0; i < NUM_WEP_KEYS; i++) {
			if (ieee->crypt_info.crypt[i] != NULL)
				break;
		}
		if (i == NUM_WEP_KEYS) {
			sec.enabled = 0;
			sec.level = SEC_LEVEL_0;
			sec.flags |= SEC_LEVEL;
		}
		goto done;
	}

	sec.enabled = 1;
	switch (ext->alg) {
	case IW_ENCODE_ALG_WEP:
		alg = "R-WEP";
		module = "rtllib_crypt_wep";
		break;
	case IW_ENCODE_ALG_TKIP:
		alg = "R-TKIP";
		module = "rtllib_crypt_tkip";
		break;
	case IW_ENCODE_ALG_CCMP:
		alg = "R-CCMP";
		module = "rtllib_crypt_ccmp";
		break;
	default:
		FUNC5(ieee->dev, "Unknown crypto alg %d\n", ext->alg);
		ret = -EINVAL;
		goto done;
	}
	FUNC5(dev, "alg name:%s\n", alg);

	ops = FUNC3(alg);
	if (ops == NULL) {
		char tempbuf[100];

		FUNC4(tempbuf, 0x00, 100);
		FUNC8(tempbuf, "%s", module);
		FUNC7("%s", tempbuf);
		ops = FUNC3(alg);
	}
	if (ops == NULL) {
		FUNC6(dev, "========>unknown crypto alg %d\n", ext->alg);
		ret = -EINVAL;
		goto done;
	}

	if (*crypt == NULL || (*crypt)->ops != ops) {
		struct lib80211_crypt_data *new_crypt;

		FUNC2(&ieee->crypt_info, crypt);

		new_crypt = FUNC1(sizeof(*new_crypt), GFP_KERNEL);
		if (new_crypt == NULL) {
			ret = -ENOMEM;
			goto done;
		}
		new_crypt->ops = ops;
		if (new_crypt->ops && FUNC13(new_crypt->ops->owner))
			new_crypt->priv = new_crypt->ops->init(idx);

		if (new_crypt->priv == NULL) {
			FUNC0(new_crypt);
			ret = -EINVAL;
			goto done;
		}
		*crypt = new_crypt;

	}

	if (ext->key_len > 0 && (*crypt)->ops->set_key &&
	    (*crypt)->ops->set_key(ext->key, ext->key_len, ext->rx_seq,
				   (*crypt)->priv) < 0) {
		FUNC6(dev, "key setting failed\n");
		ret = -EINVAL;
		goto done;
	}
	if (ext->ext_flags & IW_ENCODE_EXT_SET_TX_KEY) {
		ieee->crypt_info.tx_keyidx = idx;
		sec.active_key = idx;
		sec.flags |= SEC_ACTIVE_KEY;
	}
	if (ext->alg != IW_ENCODE_ALG_NONE) {
		sec.key_sizes[idx] = ext->key_len;
		sec.flags |= (1 << idx);
		if (ext->alg == IW_ENCODE_ALG_WEP) {
			sec.flags |= SEC_LEVEL;
			sec.level = SEC_LEVEL_1;
		} else if (ext->alg == IW_ENCODE_ALG_TKIP) {
			sec.flags |= SEC_LEVEL;
			sec.level = SEC_LEVEL_2;
		} else if (ext->alg == IW_ENCODE_ALG_CCMP) {
			sec.flags |= SEC_LEVEL;
			sec.level = SEC_LEVEL_3;
		}
		/* Don't set sec level for group keys. */
		if (group_key)
			sec.flags &= ~SEC_LEVEL;
	}
done:
	if (ieee->set_security)
		ieee->set_security(ieee->dev, &sec);

	if (ieee->reset_on_keychange &&
	    ieee->iw_mode != IW_MODE_INFRA &&
	    ieee->reset_port && ieee->reset_port(dev)) {
		FUNC5(ieee->dev, "Port reset failed\n");
		return -EINVAL;
	}
	return ret;
}