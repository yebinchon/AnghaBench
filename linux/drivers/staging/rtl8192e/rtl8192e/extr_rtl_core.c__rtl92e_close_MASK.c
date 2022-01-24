#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct r8192_priv {int /*<<< orphan*/  wx_mutex; TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int softmac_features; } ;

/* Variables and functions */
 int IEEE_SOFTMAC_SCAN ; 
 int FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 struct r8192_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC4(dev);
	int ret;

	if ((FUNC3(priv->rtllib, false)) &&
		!(priv->rtllib->softmac_features & IEEE_SOFTMAC_SCAN)) {
		FUNC5(priv->rtllib);
	}

	FUNC1(&priv->wx_mutex);

	ret = FUNC0(dev, true);

	FUNC2(&priv->wx_mutex);

	return ret;

}