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
struct TYPE_2__ {char* mcl_level; } ;
struct qeth_card {TYPE_1__ info; } ;
struct net_device {struct qeth_card* ml_priv; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 char* FUNC0 (struct qeth_card*) ; 
 char* FUNC1 (struct qeth_card*) ; 
 char* FUNC2 (struct qeth_card*) ; 
 scalar_t__ FUNC3 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev,
			     struct ethtool_drvinfo *info)
{
	struct qeth_card *card = dev->ml_priv;

	FUNC5(info->driver, FUNC3(card) ? "qeth_l2" : "qeth_l3",
		sizeof(info->driver));
	FUNC5(info->version, "1.0", sizeof(info->version));
	FUNC5(info->fw_version, card->info.mcl_level,
		sizeof(info->fw_version));
	FUNC4(info->bus_info, sizeof(info->bus_info), "%s/%s/%s",
		 FUNC1(card), FUNC2(card), FUNC0(card));
}