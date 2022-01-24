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
struct vnt_private {int bRadioOff; int byRFType; int /*<<< orphan*/  PortOffset; int /*<<< orphan*/  byLocalID; scalar_t__ bRadioControlOff; scalar_t__ bHWRadioOff; } ;

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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
#define  RF_AIROHA 131 
#define  RF_AIROHA7230 130 
#define  RF_AL2230S 129 
#define  RF_RFMD2959 128 
 int /*<<< orphan*/  SOFTPWRCTL_SWPE1 ; 
 int SOFTPWRCTL_SWPE2 ; 
 int SOFTPWRCTL_SWPE3 ; 
 int SOFTPWRCTL_TXPEINV ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

bool FUNC6(struct vnt_private *priv)
{
	bool bResult = true;

	FUNC5("chester power on\n");
	if (priv->bRadioControlOff) {
		if (priv->bHWRadioOff)
			FUNC5("chester bHWRadioOff\n");
		if (priv->bRadioControlOff)
			FUNC5("chester bRadioControlOff\n");
		return false; }

	if (!priv->bRadioOff) {
		FUNC5("chester pbRadioOff\n");
		return true; }

	FUNC0(priv, priv->byLocalID);

	FUNC2(priv->PortOffset, MAC_REG_HOSTCR, HOSTCR_RXON);

	switch (priv->byRFType) {
	case RF_RFMD2959:
		FUNC4(priv->PortOffset, MAC_REG_SOFTPWRCTL,
				  SOFTPWRCTL_TXPEINV);
		FUNC3(priv->PortOffset, MAC_REG_SOFTPWRCTL,
				   SOFTPWRCTL_SWPE1);
		break;

	case RF_AIROHA:
	case RF_AL2230S:
	case RF_AIROHA7230:
		FUNC4(priv->PortOffset, MAC_REG_SOFTPWRCTL,
				  (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
		break;
	}

	priv->bRadioOff = false;
	FUNC5("chester power on\n");
	FUNC1(priv->PortOffset, MAC_REG_GPIOCTL0,
		       LED_ACTSET); /* LED issue */
	return bResult;
}