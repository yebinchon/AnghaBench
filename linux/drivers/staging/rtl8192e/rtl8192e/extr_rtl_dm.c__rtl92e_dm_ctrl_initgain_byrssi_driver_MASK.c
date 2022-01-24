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
typedef  int u8 ;
struct r8192_priv {int /*<<< orphan*/  undecorated_smoothed_pwdb; TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int dig_enable_flag; int /*<<< orphan*/  CurSTAConnectState; int /*<<< orphan*/  PreSTAConnectState; scalar_t__ dig_algorithm_switch; int /*<<< orphan*/  rssi_val; int /*<<< orphan*/  dig_state; } ;
struct TYPE_3__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIG_STA_CONNECT ; 
 int /*<<< orphan*/  DIG_STA_DISCONNECT ; 
 int /*<<< orphan*/  DM_STA_DIG_OFF ; 
 scalar_t__ RTLLIB_LINKED ; 
 int /*<<< orphan*/  UFWP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  bMaskByte1 ; 
 TYPE_2__ dm_digtable ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct r8192_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC4(dev);
	u8 i;
	static u8	fw_dig;

	if (dm_digtable.dig_enable_flag == false)
		return;

	if (dm_digtable.dig_algorithm_switch)
		fw_dig = 0;
	if (fw_dig <= 3) {
		for (i = 0; i < 3; i++)
			FUNC3(dev, UFWP, bMaskByte1, 0x8);
		fw_dig++;
		dm_digtable.dig_state = DM_STA_DIG_OFF;
	}

	if (priv->rtllib->state == RTLLIB_LINKED)
		dm_digtable.CurSTAConnectState = DIG_STA_CONNECT;
	else
		dm_digtable.CurSTAConnectState = DIG_STA_DISCONNECT;


	dm_digtable.rssi_val = priv->undecorated_smoothed_pwdb;
	FUNC1(dev);
	FUNC2(dev);
	FUNC0(dev);
	if (dm_digtable.dig_algorithm_switch)
		dm_digtable.dig_algorithm_switch = 0;
	dm_digtable.PreSTAConnectState = dm_digtable.CurSTAConnectState;

}