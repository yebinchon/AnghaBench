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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct vnt_private {unsigned short wBeaconInterval; scalar_t__ PortOffset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnt_private*,int*) ; 
 int FUNC1 (int,unsigned short) ; 
 scalar_t__ MAC_REG_BI ; 
 scalar_t__ MAC_REG_NEXTTBTT ; 
 int /*<<< orphan*/  MAC_REG_TFTCTL ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TFTCTL_TBTTSYNCEN ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned short) ; 

bool FUNC5(struct vnt_private *priv,
			  unsigned short wBeaconInterval)
{
	u64 qwNextTBTT = 0;

	FUNC0(priv, &qwNextTBTT); /* Get Local TSF counter */

	qwNextTBTT = FUNC1(qwNextTBTT, wBeaconInterval);

	/* set HW beacon interval */
	FUNC4(priv->PortOffset + MAC_REG_BI, wBeaconInterval);
	priv->wBeaconInterval = wBeaconInterval;
	/* Set NextTBTT */
	FUNC3(priv->PortOffset + MAC_REG_NEXTTBTT, (u32)qwNextTBTT);
	FUNC3(priv->PortOffset + MAC_REG_NEXTTBTT + 4,
		     (u32)(qwNextTBTT >> 32));
	FUNC2(priv->PortOffset, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);

	return true;
}