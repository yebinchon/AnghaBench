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
struct uniphier_pcie_priv {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ PCL_APP_PM0 ; 
 int PCL_PERST_NOE_REGEN ; 
 int PCL_PERST_NOE_REGVAL ; 
 int PCL_PERST_OUT_REGEN ; 
 int PCL_PERST_OUT_REGVAL ; 
 int PCL_PERST_PLDN_REGEN ; 
 int PCL_PERST_PLDN_REGVAL ; 
 scalar_t__ PCL_PINCTRL0 ; 
 int PCL_SYS_AUX_PWR_DET ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct uniphier_pcie_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct uniphier_pcie_priv *priv)
{
	u32 val;

	/* use auxiliary power detection */
	val = FUNC0(priv->base + PCL_APP_PM0);
	val |= PCL_SYS_AUX_PWR_DET;
	FUNC3(val, priv->base + PCL_APP_PM0);

	/* assert PERST# */
	val = FUNC0(priv->base + PCL_PINCTRL0);
	val &= ~(PCL_PERST_NOE_REGVAL | PCL_PERST_OUT_REGVAL
		 | PCL_PERST_PLDN_REGVAL);
	val |= PCL_PERST_NOE_REGEN | PCL_PERST_OUT_REGEN
		| PCL_PERST_PLDN_REGEN;
	FUNC3(val, priv->base + PCL_PINCTRL0);

	FUNC1(priv, false);

	FUNC2(100000, 200000);

	/* deassert PERST# */
	val = FUNC0(priv->base + PCL_PINCTRL0);
	val |= PCL_PERST_OUT_REGVAL | PCL_PERST_OUT_REGEN;
	FUNC3(val, priv->base + PCL_PINCTRL0);
}