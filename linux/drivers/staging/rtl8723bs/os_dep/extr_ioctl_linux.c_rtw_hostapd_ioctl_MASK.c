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
struct net_device {int dummy; } ;
struct iw_point {int /*<<< orphan*/  length; int /*<<< orphan*/  pointer; } ;
struct ieee_param {int cmd; } ;
struct adapter {int /*<<< orphan*/  hw_init_completed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
#define  RTL871X_HOSTAPD_ACL_ADD_STA 141 
#define  RTL871X_HOSTAPD_ACL_REMOVE_STA 140 
#define  RTL871X_HOSTAPD_ADD_STA 139 
#define  RTL871X_HOSTAPD_FLUSH 138 
#define  RTL871X_HOSTAPD_GET_INFO_STA 137 
#define  RTL871X_HOSTAPD_GET_WPAIE_STA 136 
#define  RTL871X_HOSTAPD_REMOVE_STA 135 
#define  RTL871X_HOSTAPD_SET_BEACON 134 
#define  RTL871X_HOSTAPD_SET_HIDDEN_SSID 133 
#define  RTL871X_HOSTAPD_SET_MACADDR_ACL 132 
#define  RTL871X_HOSTAPD_SET_WPS_ASSOC_RESP 131 
#define  RTL871X_HOSTAPD_SET_WPS_BEACON 130 
#define  RTL871X_HOSTAPD_SET_WPS_PROBE_RESP 129 
#define  RTL871X_SET_ENCRYPTION 128 
 scalar_t__ FUNC1 (struct ieee_param*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct ieee_param*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_param*) ; 
 int FUNC4 (struct net_device*,struct ieee_param*) ; 
 int FUNC5 (struct net_device*,struct ieee_param*) ; 
 int FUNC6 (struct net_device*,struct ieee_param*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int FUNC8 (struct net_device*,struct ieee_param*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct net_device*,struct ieee_param*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct net_device*,struct ieee_param*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct net_device*,struct ieee_param*,int /*<<< orphan*/ ) ; 
 struct ieee_param* FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct net_device*) ; 
 int FUNC14 (struct net_device*,struct ieee_param*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct net_device*,struct ieee_param*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct net_device*,struct ieee_param*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct net_device*,struct ieee_param*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct net_device*,struct ieee_param*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct net_device*,struct ieee_param*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct net_device *dev, struct iw_point *p)
{
	struct ieee_param *param;
	int ret = 0;
	struct adapter *padapter = (struct adapter *)FUNC13(dev);

	/* DBG_871X("%s\n", __func__); */

	/*
	* this function is expect to call in master mode, which allows no power saving
	* so, we just check hw_init_completed
	*/

	if (!padapter->hw_init_completed) {
		ret = -EPERM;
		goto out;
	}


	/* if (p->length < sizeof(struct ieee_param) || !p->pointer) { */
	if (!p->pointer) {
		ret = -EINVAL;
		goto out;
	}

	param = FUNC12(p->length);
	if (param == NULL) {
		ret = -ENOMEM;
		goto out;
	}

	if (FUNC1(param, p->pointer, p->length)) {
		FUNC3(param);
		ret = -EFAULT;
		goto out;
	}

	/* DBG_871X("%s, cmd =%d\n", __func__, param->cmd); */

	switch (param->cmd) {
	case RTL871X_HOSTAPD_FLUSH:

		FUNC7(dev);

		break;

	case RTL871X_HOSTAPD_ADD_STA:

		ret = FUNC4(dev, param);

		break;

	case RTL871X_HOSTAPD_REMOVE_STA:

		ret = FUNC5(dev, param);

		break;

	case RTL871X_HOSTAPD_SET_BEACON:

		ret = FUNC14(dev, param, p->length);

		break;

	case RTL871X_SET_ENCRYPTION:

		ret = FUNC15(dev, param, p->length);

		break;

	case RTL871X_HOSTAPD_GET_WPAIE_STA:

		ret = FUNC6(dev, param);

		break;

	case RTL871X_HOSTAPD_SET_WPS_BEACON:

		ret = FUNC18(dev, param, p->length);

		break;

	case RTL871X_HOSTAPD_SET_WPS_PROBE_RESP:

		ret = FUNC19(dev, param, p->length);

		break;

	case RTL871X_HOSTAPD_SET_WPS_ASSOC_RESP:

		ret = FUNC17(dev, param, p->length);

		break;

	case RTL871X_HOSTAPD_SET_HIDDEN_SSID:

		ret = FUNC16(dev, param, p->length);

		break;

	case RTL871X_HOSTAPD_GET_INFO_STA:

		ret = FUNC10(dev, param, p->length);

		break;

	case RTL871X_HOSTAPD_SET_MACADDR_ACL:

		ret = FUNC11(dev, param, p->length);

		break;

	case RTL871X_HOSTAPD_ACL_ADD_STA:

		ret = FUNC8(dev, param, p->length);

		break;

	case RTL871X_HOSTAPD_ACL_REMOVE_STA:

		ret = FUNC9(dev, param, p->length);

		break;

	default:
		FUNC0("Unknown hostapd request: %d\n", param->cmd);
		ret = -EOPNOTSUPP;
		break;

	}

	if (ret == 0 && FUNC2(p->pointer, param, p->length))
		ret = -EFAULT;


	FUNC3(param);

out:

	return ret;

}