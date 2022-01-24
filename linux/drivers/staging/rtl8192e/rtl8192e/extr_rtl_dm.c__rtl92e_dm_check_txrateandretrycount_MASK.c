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
struct TYPE_2__ {int /*<<< orphan*/  txretrycount; void* last_packet_rate; void* CurrentShowTxate; } ;
struct rtllib_device {TYPE_1__ softmac_stats; } ;
struct r8192_priv {struct rtllib_device* rtllib; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  Current_Tx_Rate_Reg ; 
 int /*<<< orphan*/  Initial_Tx_Rate_Reg ; 
 int /*<<< orphan*/  Tx_Retry_Count_Reg ; 
 void* FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC2(dev);
	struct rtllib_device *ieee = priv->rtllib;

	ieee->softmac_stats.CurrentShowTxate = FUNC0(dev,
						 Current_Tx_Rate_Reg);

	ieee->softmac_stats.last_packet_rate = FUNC0(dev,
						 Initial_Tx_Rate_Reg);

	ieee->softmac_stats.txretrycount = FUNC1(dev,
						 Tx_Retry_Count_Reg);
}