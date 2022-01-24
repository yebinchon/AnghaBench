#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_5__ {TYPE_1__* parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  driver; } ;
struct ethsw_port_priv {TYPE_3__* ethsw_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  mc_io; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 char* KBUILD_MODNAME ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 struct ethsw_port_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev,
			      struct ethtool_drvinfo *drvinfo)
{
	struct ethsw_port_priv *port_priv = FUNC2(netdev);
	u16 version_major, version_minor;
	int err;

	FUNC4(drvinfo->driver, KBUILD_MODNAME, sizeof(drvinfo->driver));

	err = FUNC1(port_priv->ethsw_data->mc_io, 0,
				   &version_major,
				   &version_minor);
	if (err)
		FUNC4(drvinfo->fw_version, "N/A",
			sizeof(drvinfo->fw_version));
	else
		FUNC3(drvinfo->fw_version, sizeof(drvinfo->fw_version),
			 "%u.%u", version_major, version_minor);

	FUNC4(drvinfo->bus_info, FUNC0(netdev->dev.parent->parent),
		sizeof(drvinfo->bus_info));
}