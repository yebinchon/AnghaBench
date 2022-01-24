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
struct switchdev_obj_port_mdb {int /*<<< orphan*/  addr; } ;
struct net_device {int dummy; } ;
struct ethsw_port_priv {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ethsw_port_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int) ; 
 struct ethsw_port_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev,
			const struct switchdev_obj_port_mdb *mdb)
{
	struct ethsw_port_priv *port_priv = FUNC3(netdev);
	int err;

	if (!FUNC4(netdev, 0, mdb->addr))
		return -ENOENT;

	err = FUNC1(port_priv, mdb->addr);
	if (err)
		return err;

	err = FUNC0(netdev, mdb->addr);
	if (err) {
		FUNC2(netdev, "dev_mc_del err %d\n", err);
		return err;
	}

	return err;
}