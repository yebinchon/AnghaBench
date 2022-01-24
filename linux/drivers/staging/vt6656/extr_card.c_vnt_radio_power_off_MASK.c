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
struct vnt_private {int rf_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO3_INTMD ; 
 int HOSTCR_RXON ; 
 int /*<<< orphan*/  MAC_REG_GPIOCTL1 ; 
 int /*<<< orphan*/  MAC_REG_HOSTCR ; 
 int /*<<< orphan*/  MAC_REG_SOFTPWRCTL ; 
#define  RF_AIROHA7230 133 
#define  RF_AL2230 132 
#define  RF_AL2230S 131 
#define  RF_VT3226 130 
#define  RF_VT3226D0 129 
#define  RF_VT3342A0 128 
 int SOFTPWRCTL_SWPE2 ; 
 int SOFTPWRCTL_SWPE3 ; 
 int FUNC0 (struct vnt_private*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vnt_private*) ; 

int FUNC3(struct vnt_private *priv)
{
	int ret = 0;

	switch (priv->rf_type) {
	case RF_AL2230:
	case RF_AL2230S:
	case RF_AIROHA7230:
	case RF_VT3226:
	case RF_VT3226D0:
	case RF_VT3342A0:
		ret = FUNC0(priv, MAC_REG_SOFTPWRCTL,
					(SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
		break;
	}

	if (ret)
		goto end;

	ret = FUNC0(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
	if (ret)
		goto end;

	ret = FUNC2(priv);
	if (ret)
		goto end;

	ret = FUNC1(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);

end:
	return ret;
}