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
struct r8192_priv {scalar_t__ bDcut; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC2(dev);
	/*static u32 tx_power_track_counter = 0;*/

#ifdef RTL8190P
	dm_CheckTXPowerTracking_TSSI(dev);
#else
	if (priv->bDcut)
		FUNC0(dev);
	else
		FUNC1(dev);
#endif

}