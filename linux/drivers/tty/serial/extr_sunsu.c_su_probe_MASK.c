#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t line; scalar_t__ type; int uartclk; int /*<<< orphan*/  membase; int /*<<< orphan*/ * ops; int /*<<< orphan*/  flags; TYPE_2__* dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  lock; } ;
struct uart_sunsu_port {int su_type; int /*<<< orphan*/  reg_size; TYPE_3__ port; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct TYPE_4__ {int /*<<< orphan*/ * irqs; } ;
struct platform_device {struct resource* resource; TYPE_2__ dev; TYPE_1__ archdata; } ;
struct device_node {int dummy; } ;
typedef  enum su_type { ____Placeholder_su_type } su_type ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PORT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int SU_BASE_BAUD ; 
 scalar_t__ SU_PORT_KBD ; 
 scalar_t__ SU_PORT_MS ; 
 int SU_PORT_PORT ; 
 size_t UART_NR ; 
 int /*<<< orphan*/  UPF_BOOT_AUTOCONF ; 
 int /*<<< orphan*/  FUNC1 (struct uart_sunsu_port*) ; 
 struct uart_sunsu_port* FUNC2 (int,int /*<<< orphan*/ ) ; 
 size_t nr_inst ; 
 int /*<<< orphan*/  FUNC3 (struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct uart_sunsu_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct device_node*,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_sunsu_port*) ; 
 int FUNC12 (struct uart_sunsu_port*) ; 
 int /*<<< orphan*/  sunsu_pops ; 
 struct uart_sunsu_port* sunsu_ports ; 
 int /*<<< orphan*/  sunsu_reg ; 
 int FUNC13 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *op)
{
	struct device_node *dp = op->dev.of_node;
	struct uart_sunsu_port *up;
	struct resource *rp;
	enum su_type type;
	bool ignore_line;
	int err;

	type = FUNC9(dp);
	if (type == SU_PORT_PORT) {
		if (nr_inst >= UART_NR)
			return -EINVAL;
		up = &sunsu_ports[nr_inst];
	} else {
		up = FUNC2(sizeof(*up), GFP_KERNEL);
		if (!up)
			return -ENOMEM;
	}

	up->port.line = nr_inst;

	FUNC8(&up->port.lock);

	up->su_type = type;

	rp = &op->resource[0];
	up->port.mapbase = rp->start;
	up->reg_size = FUNC7(rp);
	up->port.membase = FUNC3(rp, 0, up->reg_size, "su");
	if (!up->port.membase) {
		if (type != SU_PORT_PORT)
			FUNC1(up);
		return -ENOMEM;
	}

	up->port.irq = op->archdata.irqs[0];

	up->port.dev = &op->dev;

	up->port.type = PORT_UNKNOWN;
	up->port.uartclk = (SU_BASE_BAUD * 16);

	err = 0;
	if (up->su_type == SU_PORT_KBD || up->su_type == SU_PORT_MS) {
		err = FUNC12(up);
		if (err) {
			FUNC4(&op->resource[0],
				   up->port.membase, up->reg_size);
			FUNC1(up);
			return err;
		}
		FUNC6(op, up);

		nr_inst++;

		return 0;
	}

	up->port.flags |= UPF_BOOT_AUTOCONF;

	FUNC11(up);

	err = -ENODEV;
	if (up->port.type == PORT_UNKNOWN)
		goto out_unmap;

	up->port.ops = &sunsu_pops;

	ignore_line = false;
	if (FUNC5(dp, "rsc-console") ||
	    FUNC5(dp, "lom-console"))
		ignore_line = true;

	FUNC10(FUNC0(), dp,
				&sunsu_reg, up->port.line,
				ignore_line);
	err = FUNC13(&sunsu_reg, &up->port);
	if (err)
		goto out_unmap;

	FUNC6(op, up);

	nr_inst++;

	return 0;

out_unmap:
	FUNC4(&op->resource[0], up->port.membase, up->reg_size);
	FUNC1(up);
	return err;
}