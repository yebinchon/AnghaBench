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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct r8192_priv {int /*<<< orphan*/  up; int /*<<< orphan*/  SwChnlStep; int /*<<< orphan*/  SwChnlStage; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev, u8 channel)
{
	struct r8192_priv *priv = FUNC2(dev);
	u32 delay = 0;

	while (!FUNC0(dev, channel,
						&priv->SwChnlStage,
						&priv->SwChnlStep, &delay)) {
		if (delay > 0)
			FUNC1(delay);
		if (!priv->up)
			break;
	}
}