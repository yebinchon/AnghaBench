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
struct TYPE_2__ {int /*<<< orphan*/  value; } ;
union iwreq_data {TYPE_1__ sens; } ;
struct r8192_priv {scalar_t__ (* rf_set_sens ) (struct net_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  wx_mutex; int /*<<< orphan*/  sens; scalar_t__ bHwRadioOff; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 short EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			       struct iw_request_info *info,
			       union iwreq_data *wrqu, char *extra)
{
	struct r8192_priv *priv = FUNC2(dev);

	short err = 0;

	if (priv->bHwRadioOff)
		return 0;

	FUNC0(&priv->wx_mutex);
	if (priv->rf_set_sens == NULL) {
		err = -1; /* we have not this support for this radio */
		goto exit;
	}
	if (priv->rf_set_sens(dev, wrqu->sens.value) == 0)
		priv->sens = wrqu->sens.value;
	else
		err = -EINVAL;

exit:
	FUNC1(&priv->wx_mutex);

	return err;
}