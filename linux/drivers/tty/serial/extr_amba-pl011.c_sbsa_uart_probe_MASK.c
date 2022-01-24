#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int irq; int /*<<< orphan*/ * ops; int /*<<< orphan*/  iotype; } ;
struct uart_amba_port {int fifosize; int fixed_baud; int /*<<< orphan*/  type; TYPE_1__ port; TYPE_2__* vendor; int /*<<< orphan*/  reg_offset; } ;
struct resource {int dummy; } ;
struct TYPE_9__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_8__ {scalar_t__ access_32b; int /*<<< orphan*/  reg_offset; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  UPIO_MEM ; 
 int /*<<< orphan*/  UPIO_MEM32 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*) ; 
 struct uart_amba_port* FUNC1 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device_node*,char*,int*) ; 
 int FUNC3 () ; 
 int FUNC4 (struct uart_amba_port*) ; 
 int FUNC5 (TYPE_4__*,struct uart_amba_port*,struct resource*,int) ; 
 int FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct uart_amba_port*) ; 
 scalar_t__ qdf2400_e44_present ; 
 int /*<<< orphan*/  sbsa_uart_pops ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*) ; 
 TYPE_2__ vendor_qdt_qdf2400_e44 ; 
 TYPE_2__ vendor_sbsa ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct uart_amba_port *uap;
	struct resource *r;
	int portnr, ret;
	int baudrate;

	/*
	 * Check the mandatory baud rate parameter in the DT node early
	 * so that we can easily exit with the error.
	 */
	if (pdev->dev.of_node) {
		struct device_node *np = pdev->dev.of_node;

		ret = FUNC2(np, "current-speed", &baudrate);
		if (ret)
			return ret;
	} else {
		baudrate = 115200;
	}

	portnr = FUNC3();
	if (portnr < 0)
		return portnr;

	uap = FUNC1(&pdev->dev, sizeof(struct uart_amba_port),
			   GFP_KERNEL);
	if (!uap)
		return -ENOMEM;

	ret = FUNC6(pdev, 0);
	if (ret < 0)
		return ret;
	uap->port.irq	= ret;

#ifdef CONFIG_ACPI_SPCR_TABLE
	if (qdf2400_e44_present) {
		dev_info(&pdev->dev, "working around QDF2400 SoC erratum 44\n");
		uap->vendor = &vendor_qdt_qdf2400_e44;
	} else
#endif
		uap->vendor = &vendor_sbsa;

	uap->reg_offset	= uap->vendor->reg_offset;
	uap->fifosize	= 32;
	uap->port.iotype = uap->vendor->access_32b ? UPIO_MEM32 : UPIO_MEM;
	uap->port.ops	= &sbsa_uart_pops;
	uap->fixed_baud = baudrate;

	FUNC9(uap->type, sizeof(uap->type), "SBSA");

	r = FUNC7(pdev, IORESOURCE_MEM, 0);

	ret = FUNC5(&pdev->dev, uap, r, portnr);
	if (ret)
		return ret;

	FUNC8(pdev, uap);

	return FUNC4(uap);
}