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
struct phy {int dummy; } ;
struct imx8mq_usb_phy {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ PHY_CTRL0 ; 
 int PHY_CTRL0_REF_SSP_EN ; 
 scalar_t__ PHY_CTRL1 ; 
 int PHY_CTRL1_ATERESET ; 
 int PHY_CTRL1_COMMONONN ; 
 int PHY_CTRL1_RESET ; 
 int PHY_CTRL1_VDATDETENB0 ; 
 int PHY_CTRL1_VDATSRCENB0 ; 
 scalar_t__ PHY_CTRL2 ; 
 int PHY_CTRL2_TXENABLEN0 ; 
 struct imx8mq_usb_phy* FUNC0 (struct phy*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct phy *phy)
{
	struct imx8mq_usb_phy *imx_phy = FUNC0(phy);
	u32 value;

	value = FUNC1(imx_phy->base + PHY_CTRL1);
	value &= ~(PHY_CTRL1_VDATSRCENB0 | PHY_CTRL1_VDATDETENB0 |
		   PHY_CTRL1_COMMONONN);
	value |= PHY_CTRL1_RESET | PHY_CTRL1_ATERESET;
	FUNC2(value, imx_phy->base + PHY_CTRL1);

	value = FUNC1(imx_phy->base + PHY_CTRL0);
	value |= PHY_CTRL0_REF_SSP_EN;
	FUNC2(value, imx_phy->base + PHY_CTRL0);

	value = FUNC1(imx_phy->base + PHY_CTRL2);
	value |= PHY_CTRL2_TXENABLEN0;
	FUNC2(value, imx_phy->base + PHY_CTRL2);

	value = FUNC1(imx_phy->base + PHY_CTRL1);
	value &= ~(PHY_CTRL1_RESET | PHY_CTRL1_ATERESET);
	FUNC2(value, imx_phy->base + PHY_CTRL1);

	return 0;
}