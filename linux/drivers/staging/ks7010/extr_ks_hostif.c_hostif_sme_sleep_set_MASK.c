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
struct ks_wlan_private {scalar_t__ sleep_mode; } ;

/* Variables and functions */
 scalar_t__ SLP_ACTIVE ; 
 scalar_t__ SLP_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (struct ks_wlan_private*,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct ks_wlan_private *priv)
{
	if (priv->sleep_mode != SLP_SLEEP &&
	    priv->sleep_mode != SLP_ACTIVE)
		return;

	FUNC0(priv, priv->sleep_mode);
}