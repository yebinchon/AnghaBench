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
struct vnt_private {int bRadioOff; int byRFType; int /*<<< orphan*/  PortOffset; int /*<<< orphan*/  byLocalID; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnt_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HOSTCR_RXON ; 
 int /*<<< orphan*/  LED_ACTSET ; 
 int /*<<< orphan*/  MAC_REG_GPIOCTL0 ; 
 int /*<<< orphan*/  MAC_REG_HOSTCR ; 
 int /*<<< orphan*/  MAC_REG_SOFTPWRCTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  RF_AIROHA 131 
#define  RF_AIROHA7230 130 
#define  RF_AL2230S 129 
#define  RF_RFMD2959 128 
 int /*<<< orphan*/  SOFTPWRCTL_SWPE1 ; 
 int /*<<< orphan*/  SOFTPWRCTL_SWPE2 ; 
 int /*<<< orphan*/  SOFTPWRCTL_SWPE3 ; 
 int /*<<< orphan*/  SOFTPWRCTL_TXPEINV ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(struct vnt_private *priv)
{
	if (priv->bRadioOff)
		return;

	switch (priv->byRFType) {
	case RF_RFMD2959:
		FUNC3(priv->PortOffset, MAC_REG_SOFTPWRCTL,
				   SOFTPWRCTL_TXPEINV);
		FUNC4(priv->PortOffset, MAC_REG_SOFTPWRCTL,
				  SOFTPWRCTL_SWPE1);
		break;

	case RF_AIROHA:
	case RF_AL2230S:
	case RF_AIROHA7230:
		FUNC3(priv->PortOffset, MAC_REG_SOFTPWRCTL,
				   SOFTPWRCTL_SWPE2);
		FUNC3(priv->PortOffset, MAC_REG_SOFTPWRCTL,
				   SOFTPWRCTL_SWPE3);
		break;
	}

	FUNC1(priv->PortOffset, MAC_REG_HOSTCR, HOSTCR_RXON);

	FUNC0(priv, priv->byLocalID);

	priv->bRadioOff = true;
	FUNC5("chester power off\n");
	FUNC2(priv->PortOffset, MAC_REG_GPIOCTL0,
		      LED_ACTSET);  /* LED issue */
}