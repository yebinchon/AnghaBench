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
struct imx_usbmisc_data {int index; int /*<<< orphan*/  oc_pol_active_low; int /*<<< orphan*/  oc_pol_configured; int /*<<< orphan*/  dev; } ;
struct imx_usbmisc {int /*<<< orphan*/  lock; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int EINVAL ; 
 int MX25_EHCI_INTERFACE_DIFF_UNI ; 
 int MX25_EHCI_INTERFACE_MASK ; 
 int MX25_EHCI_INTERFACE_SINGLE_UNI ; 
 int MX25_H1_IPPUE_DOWN_BIT ; 
 int MX25_H1_IPPUE_UP_BIT ; 
 int MX25_H1_OCPOL_BIT ; 
 int MX25_H1_PM_BIT ; 
 int MX25_H1_PP_BIT ; 
 int MX25_H1_SIC_MASK ; 
 int MX25_H1_SIC_SHIFT ; 
 int MX25_H1_TLL_BIT ; 
 int MX25_H1_USBTE_BIT ; 
 int MX25_OTG_OCPOL_BIT ; 
 int MX25_OTG_PM_BIT ; 
 int MX25_OTG_PP_BIT ; 
 int MX25_OTG_SIC_MASK ; 
 int MX25_OTG_SIC_SHIFT ; 
 struct imx_usbmisc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct imx_usbmisc_data *data)
{
	struct imx_usbmisc *usbmisc = FUNC0(data->dev);
	unsigned long flags;
	u32 val = 0;

	if (data->index > 1)
		return -EINVAL;

	FUNC2(&usbmisc->lock, flags);
	switch (data->index) {
	case 0:
		val = FUNC1(usbmisc->base);
		val &= ~(MX25_OTG_SIC_MASK | MX25_OTG_PP_BIT);
		val |= (MX25_EHCI_INTERFACE_DIFF_UNI & MX25_EHCI_INTERFACE_MASK) << MX25_OTG_SIC_SHIFT;
		val |= (MX25_OTG_PM_BIT | MX25_OTG_OCPOL_BIT);

		/*
		 * If the polarity is not configured assume active high for
		 * historical reasons.
		 */
		if (data->oc_pol_configured && data->oc_pol_active_low)
			val &= ~MX25_OTG_OCPOL_BIT;

		FUNC4(val, usbmisc->base);
		break;
	case 1:
		val = FUNC1(usbmisc->base);
		val &= ~(MX25_H1_SIC_MASK | MX25_H1_PP_BIT |  MX25_H1_IPPUE_UP_BIT);
		val |= (MX25_EHCI_INTERFACE_SINGLE_UNI & MX25_EHCI_INTERFACE_MASK) << MX25_H1_SIC_SHIFT;
		val |= (MX25_H1_PM_BIT | MX25_H1_OCPOL_BIT | MX25_H1_TLL_BIT |
			MX25_H1_USBTE_BIT | MX25_H1_IPPUE_DOWN_BIT);

		/*
		 * If the polarity is not configured assume active high for
		 * historical reasons.
		 */
		if (data->oc_pol_configured && data->oc_pol_active_low)
			val &= ~MX25_H1_OCPOL_BIT;

		FUNC4(val, usbmisc->base);

		break;
	}
	FUNC3(&usbmisc->lock, flags);

	return 0;
}