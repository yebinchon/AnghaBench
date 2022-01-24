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
struct vendor_data {scalar_t__ access_32b; int /*<<< orphan*/  (* get_fifosize ) (struct amba_device*) ;int /*<<< orphan*/  reg_offset; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/  irq; int /*<<< orphan*/  iotype; } ;
struct uart_amba_port {int /*<<< orphan*/  type; TYPE_1__ port; int /*<<< orphan*/  fifosize; struct vendor_data* vendor; int /*<<< orphan*/  reg_offset; int /*<<< orphan*/  clk; } ;
struct amba_id {struct vendor_data* data; } ;
struct amba_device {int /*<<< orphan*/  res; int /*<<< orphan*/  dev; int /*<<< orphan*/ * irq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UPIO_MEM ; 
 int /*<<< orphan*/  UPIO_MEM32 ; 
 int /*<<< orphan*/  amba_pl011_pops ; 
 int FUNC2 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amba_device*,struct uart_amba_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct uart_amba_port* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int FUNC7 (struct uart_amba_port*) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct uart_amba_port*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct amba_device*) ; 

__attribute__((used)) static int FUNC11(struct amba_device *dev, const struct amba_id *id)
{
	struct uart_amba_port *uap;
	struct vendor_data *vendor = id->data;
	int portnr, ret;

	portnr = FUNC6();
	if (portnr < 0)
		return portnr;

	uap = FUNC5(&dev->dev, sizeof(struct uart_amba_port),
			   GFP_KERNEL);
	if (!uap)
		return -ENOMEM;

	uap->clk = FUNC4(&dev->dev, NULL);
	if (FUNC0(uap->clk))
		return FUNC1(uap->clk);

	uap->reg_offset = vendor->reg_offset;
	uap->vendor = vendor;
	uap->fifosize = vendor->get_fifosize(dev);
	uap->port.iotype = vendor->access_32b ? UPIO_MEM32 : UPIO_MEM;
	uap->port.irq = dev->irq[0];
	uap->port.ops = &amba_pl011_pops;

	FUNC9(uap->type, sizeof(uap->type), "PL011 rev%u", FUNC2(dev));

	ret = FUNC8(&dev->dev, uap, &dev->res, portnr);
	if (ret)
		return ret;

	FUNC3(dev, uap);

	return FUNC7(uap);
}