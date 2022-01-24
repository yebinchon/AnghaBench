#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct dwc3_omap {TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;

/* Variables and functions */
#define  DWC3_OMAP_UTMI_MODE_HW 129 
#define  DWC3_OMAP_UTMI_MODE_SW 128 
 int USBOTGSS_UTMI_OTG_CTRL_SW_MODE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int FUNC1 (struct dwc3_omap*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc3_omap*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*,int*) ; 

__attribute__((used)) static void FUNC4(struct dwc3_omap *omap)
{
	u32			reg;
	struct device_node	*node = omap->dev->of_node;
	u32			utmi_mode = 0;

	reg = FUNC1(omap);

	FUNC3(node, "utmi-mode", &utmi_mode);

	switch (utmi_mode) {
	case DWC3_OMAP_UTMI_MODE_SW:
		reg |= USBOTGSS_UTMI_OTG_CTRL_SW_MODE;
		break;
	case DWC3_OMAP_UTMI_MODE_HW:
		reg &= ~USBOTGSS_UTMI_OTG_CTRL_SW_MODE;
		break;
	default:
		FUNC0(omap->dev, "UNKNOWN utmi mode %d\n", utmi_mode);
	}

	FUNC2(omap, reg);
}