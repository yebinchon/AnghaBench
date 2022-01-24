#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct iw_point {int length; int /*<<< orphan*/  pointer; } ;
struct TYPE_7__ {int /*<<< orphan*/  reason_code; int /*<<< orphan*/  command; } ;
struct TYPE_6__ {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct TYPE_5__ {int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_3__ mlme; TYPE_2__ wpa_ie; TYPE_1__ wpa_param; } ;
struct ieee_param {int cmd; TYPE_4__ u; } ;
struct _adapter {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  IEEE_CMD_MLME 131 
#define  IEEE_CMD_SET_ENCRYPTION 130 
#define  IEEE_CMD_SET_WPA_IE 129 
#define  IEEE_CMD_SET_WPA_PARAM 128 
 scalar_t__ FUNC0 (struct ieee_param*) ; 
 int FUNC1 (struct ieee_param*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct ieee_param*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_param*) ; 
 struct ieee_param* FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct _adapter* FUNC5 (struct net_device*) ; 
 int FUNC6 (struct _adapter*,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct net_device*,struct ieee_param*,int) ; 
 int FUNC9 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev, struct iw_point *p)
{
	struct ieee_param *param;
	int ret = 0;
	struct _adapter *padapter = FUNC5(dev);

	if (p->length < sizeof(struct ieee_param) || !p->pointer)
		return -EINVAL;
	param = FUNC4(p->pointer, p->length);
	if (FUNC0(param))
		return FUNC1(param);
	switch (param->cmd) {
	case IEEE_CMD_SET_WPA_PARAM:
		ret = FUNC9(dev, param->u.wpa_param.name,
		      param->u.wpa_param.value);
		break;
	case IEEE_CMD_SET_WPA_IE:
		ret =  FUNC6(padapter, (char *)param->u.wpa_ie.data,
		       (u16)param->u.wpa_ie.len);
		break;
	case IEEE_CMD_SET_ENCRYPTION:
		ret = FUNC8(dev, param, p->length);
		break;
	case IEEE_CMD_MLME:
		ret = FUNC7(dev, param->u.mlme.command,
		      param->u.mlme.reason_code);
		break;
	default:
		ret = -EOPNOTSUPP;
		break;
	}
	if (ret == 0 && FUNC2(p->pointer, param, p->length))
		ret = -EFAULT;
	FUNC3(param);
	return ret;
}