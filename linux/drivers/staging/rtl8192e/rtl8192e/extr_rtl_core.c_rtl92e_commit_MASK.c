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
struct r8192_priv {scalar_t__ up; TYPE_1__* ops; int /*<<< orphan*/  rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* stop_adapter ) (struct net_device*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 

void FUNC5(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC2(dev);

	if (priv->up == 0)
		return;
	FUNC3(priv->rtllib, 0, true);
	FUNC1(dev);
	priv->ops->stop_adapter(dev, true);
	FUNC0(dev, false);
}