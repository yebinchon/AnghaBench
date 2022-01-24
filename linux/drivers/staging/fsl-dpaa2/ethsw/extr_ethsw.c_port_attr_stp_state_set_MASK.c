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
struct switchdev_trans {int dummy; } ;
struct net_device {int dummy; } ;
struct ethsw_port_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ethsw_port_priv*,int /*<<< orphan*/ ) ; 
 struct ethsw_port_priv* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct switchdev_trans*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev,
				   struct switchdev_trans *trans,
				   u8 state)
{
	struct ethsw_port_priv *port_priv = FUNC1(netdev);

	if (FUNC2(trans))
		return 0;

	return FUNC0(port_priv, state);
}