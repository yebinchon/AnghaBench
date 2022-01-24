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
struct usbhs_priv {int dummy; } ;
struct usbhs_mod_info {int /*<<< orphan*/  get_vbus; int /*<<< orphan*/  irq_vbus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbhs_priv*,int /*<<< orphan*/ *) ; 
 struct usbhs_mod_info* FUNC1 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  usbhsm_autonomy_get_vbus ; 
 int /*<<< orphan*/  usbhsm_autonomy_irq_vbus ; 

void FUNC2(struct usbhs_priv *priv)
{
	struct usbhs_mod_info *info = FUNC1(priv);

	info->irq_vbus = usbhsm_autonomy_irq_vbus;
	info->get_vbus = usbhsm_autonomy_get_vbus;

	FUNC0(priv, NULL);
}