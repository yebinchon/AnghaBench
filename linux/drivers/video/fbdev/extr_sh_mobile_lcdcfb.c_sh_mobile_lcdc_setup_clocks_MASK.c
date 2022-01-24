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
struct sh_mobile_lcdc_priv {struct clk* dot_clk; int /*<<< orphan*/  dev; int /*<<< orphan*/  lddckr; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
#define  LCDC_CLK_BUS 130 
#define  LCDC_CLK_EXTERNAL 129 
#define  LCDC_CLK_PERIPHERAL 128 
 int /*<<< orphan*/  LDDCKR_ICKSEL_BUS ; 
 int /*<<< orphan*/  LDDCKR_ICKSEL_HDMI ; 
 int /*<<< orphan*/  LDDCKR_ICKSEL_MIPI ; 
 int FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC4(struct sh_mobile_lcdc_priv *priv,
				       int clock_source)
{
	struct clk *clk;
	char *str;

	switch (clock_source) {
	case LCDC_CLK_BUS:
		str = "bus_clk";
		priv->lddckr = LDDCKR_ICKSEL_BUS;
		break;
	case LCDC_CLK_PERIPHERAL:
		str = "peripheral_clk";
		priv->lddckr = LDDCKR_ICKSEL_MIPI;
		break;
	case LCDC_CLK_EXTERNAL:
		str = NULL;
		priv->lddckr = LDDCKR_ICKSEL_HDMI;
		break;
	default:
		return -EINVAL;
	}

	if (str == NULL)
		return 0;

	clk = FUNC2(priv->dev, str);
	if (FUNC0(clk)) {
		FUNC3(priv->dev, "cannot get dot clock %s\n", str);
		return FUNC1(clk);
	}

	priv->dot_clk = clk;
	return 0;
}