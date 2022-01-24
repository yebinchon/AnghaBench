#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  release_num; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct rsi_common {TYPE_1__* priv; int /*<<< orphan*/  oper_mode; TYPE_2__ lmac_ver; } ;
struct TYPE_3__ {int /*<<< orphan*/  fw_file_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_ZONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 

void FUNC2(struct rsi_common *common)
{
	FUNC1(ERR_ZONE, "================================================\n");
	FUNC1(ERR_ZONE, "================ RSI Version Info ==============\n");
	FUNC1(ERR_ZONE, "================================================\n");
	FUNC1(ERR_ZONE, "FW Version\t: %d.%d.%d\n",
		common->lmac_ver.major, common->lmac_ver.minor,
		common->lmac_ver.release_num);
	FUNC1(ERR_ZONE, "Operating mode\t: %d [%s]",
		common->oper_mode, FUNC0(common->oper_mode));
	FUNC1(ERR_ZONE, "Firmware file\t: %s", common->priv->fw_file_name);
	FUNC1(ERR_ZONE, "================================================\n");
}