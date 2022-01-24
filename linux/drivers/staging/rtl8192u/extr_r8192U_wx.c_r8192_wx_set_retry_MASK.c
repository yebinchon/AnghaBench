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
struct TYPE_2__ {int flags; scalar_t__ value; scalar_t__ disabled; } ;
union iwreq_data {TYPE_1__ retry; } ;
struct r8192_priv {scalar_t__ retry_rts; scalar_t__ retry_data; int /*<<< orphan*/  wx_mutex; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int EINVAL ; 
 int IW_RETRY_LIFETIME ; 
 int IW_RETRY_LIMIT ; 
 int IW_RETRY_MAX ; 
 scalar_t__ R8180_MAX_RETRY ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				struct iw_request_info *info,
				union iwreq_data *wrqu, char *extra)
{
	struct r8192_priv *priv = FUNC1(dev);
	int err = 0;

	FUNC2(&priv->wx_mutex);

	if (wrqu->retry.flags & IW_RETRY_LIFETIME ||
	    wrqu->retry.disabled){
		err = -EINVAL;
		goto exit;
	}
	if (!(wrqu->retry.flags & IW_RETRY_LIMIT)) {
		err = -EINVAL;
		goto exit;
	}

	if (wrqu->retry.value > R8180_MAX_RETRY) {
		err = -EINVAL;
		goto exit;
	}
	if (wrqu->retry.flags & IW_RETRY_MAX) {
		priv->retry_rts = wrqu->retry.value;
		FUNC0("Setting retry for RTS/CTS data to %d", wrqu->retry.value);

	} else {
		priv->retry_data = wrqu->retry.value;
		FUNC0("Setting retry for non RTS/CTS data to %d", wrqu->retry.value);
	}

	/* FIXME !
	 * We might try to write directly the TX config register
	 * or to restart just the (R)TX process.
	 * I'm unsure if whole reset is really needed
	 */

	FUNC4(dev);
exit:
	FUNC3(&priv->wx_mutex);

	return err;
}