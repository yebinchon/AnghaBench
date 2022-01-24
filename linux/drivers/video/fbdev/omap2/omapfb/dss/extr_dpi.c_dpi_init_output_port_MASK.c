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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * dpi; } ;
struct omap_dss_device {char* name; int port_num; int /*<<< orphan*/  owner; TYPE_1__ ops; int /*<<< orphan*/  dispc_channel; int /*<<< orphan*/  output_type; int /*<<< orphan*/  id; int /*<<< orphan*/ * dev; } ;
struct dpi_data {struct omap_dss_device output; } ;
struct device_node {struct dpi_data* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_DISPLAY_TYPE_DPI ; 
 int /*<<< orphan*/  OMAP_DSS_OUTPUT_DPI ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  dpi_ops ; 
 int FUNC1 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_dss_device*) ; 

__attribute__((used)) static void FUNC3(struct platform_device *pdev,
	struct device_node *port)
{
	struct dpi_data *dpi = port->data;
	struct omap_dss_device *out = &dpi->output;
	int r;
	u32 port_num;

	r = FUNC1(port, "reg", &port_num);
	if (r)
		port_num = 0;

	switch (port_num) {
	case 2:
		out->name = "dpi.2";
		break;
	case 1:
		out->name = "dpi.1";
		break;
	case 0:
	default:
		out->name = "dpi.0";
		break;
	}

	out->dev = &pdev->dev;
	out->id = OMAP_DSS_OUTPUT_DPI;
	out->output_type = OMAP_DISPLAY_TYPE_DPI;
	out->dispc_channel = FUNC0(port_num);
	out->port_num = port_num;
	out->ops.dpi = &dpi_ops;
	out->owner = THIS_MODULE;

	FUNC2(out);
}