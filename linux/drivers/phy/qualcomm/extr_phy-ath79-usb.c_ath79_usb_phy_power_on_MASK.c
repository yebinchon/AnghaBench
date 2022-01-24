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
struct phy {int dummy; } ;
struct ath79_usb_phy {scalar_t__ no_suspend_override; scalar_t__ reset; } ;

/* Variables and functions */
 struct ath79_usb_phy* FUNC0 (struct phy*) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct phy *phy)
{
	struct ath79_usb_phy *priv = FUNC0(phy);
	int err = 0;

	if (priv->no_suspend_override) {
		err = FUNC1(priv->no_suspend_override);
		if (err)
			return err;
	}

	err = FUNC2(priv->reset);
	if (err && priv->no_suspend_override)
		FUNC2(priv->no_suspend_override);

	return err;
}