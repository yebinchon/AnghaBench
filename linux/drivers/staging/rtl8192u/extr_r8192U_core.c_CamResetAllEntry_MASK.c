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
typedef  int u32 ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  RWCAM ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	u32 ulcommand = 0;
	/* In static WEP, OID_ADD_KEY or OID_ADD_WEP are set before STA
	 * associate to AP. However, ResetKey is called on
	 * OID_802_11_INFRASTRUCTURE_MODE and MlmeAssociateRequest. In this
	 * condition, Cam can not be reset because upper layer will not set
	 * this static key again.
	 */
	ulcommand |= FUNC0(31) | FUNC0(30);
	FUNC1(dev, RWCAM, ulcommand);
}