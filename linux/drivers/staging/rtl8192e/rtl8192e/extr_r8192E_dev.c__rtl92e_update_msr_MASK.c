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
typedef  int u8 ;
struct r8192_priv {TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
typedef  enum led_ctl_mode { ____Placeholder_led_ctl_mode } led_ctl_mode ;
struct TYPE_2__ {int iw_mode; int /*<<< orphan*/  (* LedControlHandler ) (struct net_device*,int) ;int /*<<< orphan*/  state; } ;

/* Variables and functions */
#define  IW_MODE_ADHOC 130 
#define  IW_MODE_INFRA 129 
#define  IW_MODE_MASTER 128 
 int LED_CTL_LINK ; 
 int LED_CTL_NO_LINK ; 
 int /*<<< orphan*/  MSR ; 
 int MSR_LINK_ADHOC ; 
 int MSR_LINK_MANAGED ; 
 int MSR_LINK_MASK ; 
 int MSR_LINK_MASTER ; 
 int MSR_LINK_NONE ; 
 int MSR_LINK_SHIFT ; 
 int /*<<< orphan*/  RTLLIB_LINKED ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC2(dev);
	u8 msr;
	enum led_ctl_mode LedAction = LED_CTL_NO_LINK;

	msr  = FUNC0(dev, MSR);
	msr &= ~MSR_LINK_MASK;

	switch (priv->rtllib->iw_mode) {
	case IW_MODE_INFRA:
		if (priv->rtllib->state == RTLLIB_LINKED)
			msr |= (MSR_LINK_MANAGED << MSR_LINK_SHIFT);
		else
			msr |= (MSR_LINK_NONE << MSR_LINK_SHIFT);
		LedAction = LED_CTL_LINK;
		break;
	case IW_MODE_ADHOC:
		if (priv->rtllib->state == RTLLIB_LINKED)
			msr |= (MSR_LINK_ADHOC << MSR_LINK_SHIFT);
		else
			msr |= (MSR_LINK_NONE << MSR_LINK_SHIFT);
		break;
	case IW_MODE_MASTER:
		if (priv->rtllib->state == RTLLIB_LINKED)
			msr |= (MSR_LINK_MASTER << MSR_LINK_SHIFT);
		else
			msr |= (MSR_LINK_NONE << MSR_LINK_SHIFT);
		break;
	default:
		break;
	}

	FUNC1(dev, MSR, msr);
	if (priv->rtllib->LedControlHandler)
		priv->rtllib->LedControlHandler(dev, LedAction);
}