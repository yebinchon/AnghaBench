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
struct ql_adapter {int fw_rev_id; int /*<<< orphan*/  pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 struct ql_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qlge_driver_name ; 
 int /*<<< orphan*/  qlge_driver_version ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *ndev,
			   struct ethtool_drvinfo *drvinfo)
{
	struct ql_adapter *qdev = FUNC0(ndev);
	FUNC3(drvinfo->driver, qlge_driver_name, sizeof(drvinfo->driver));
	FUNC3(drvinfo->version, qlge_driver_version,
		sizeof(drvinfo->version));
	FUNC2(drvinfo->fw_version, sizeof(drvinfo->fw_version),
		 "v%d.%d.%d",
		 (qdev->fw_rev_id & 0x00ff0000) >> 16,
		 (qdev->fw_rev_id & 0x0000ff00) >> 8,
		 (qdev->fw_rev_id & 0x000000ff));
	FUNC3(drvinfo->bus_info, FUNC1(qdev->pdev),
		sizeof(drvinfo->bus_info));
}