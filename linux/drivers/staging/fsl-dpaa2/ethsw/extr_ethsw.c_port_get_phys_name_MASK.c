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
struct ethsw_port_priv {int idx; } ;

/* Variables and functions */
 int EINVAL ; 
 struct ethsw_port_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (char*,size_t,char*,int) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev, char *name,
			      size_t len)
{
	struct ethsw_port_priv *port_priv = FUNC0(netdev);
	int err;

	err = FUNC1(name, len, "p%d", port_priv->idx);
	if (err >= len)
		return -EINVAL;

	return 0;
}