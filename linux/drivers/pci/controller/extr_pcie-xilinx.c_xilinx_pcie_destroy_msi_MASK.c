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
struct xilinx_pcie_port {int /*<<< orphan*/  dev; } ;
struct msi_desc {int dummy; } ;
struct irq_data {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct irq_data* FUNC2 (unsigned int) ; 
 struct msi_desc* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*) ; 
 struct xilinx_pcie_port* FUNC5 (struct msi_desc*) ; 
 int /*<<< orphan*/  msi_irq_in_use ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(unsigned int irq)
{
	struct msi_desc *msi;
	struct xilinx_pcie_port *port;
	struct irq_data *d = FUNC2(irq);
	irq_hw_number_t hwirq = FUNC4(d);

	if (!FUNC6(hwirq, msi_irq_in_use)) {
		msi = FUNC3(irq);
		port = FUNC5(msi);
		FUNC1(port->dev, "Trying to free unused MSI#%d\n", irq);
	} else {
		FUNC0(hwirq, msi_irq_in_use);
	}
}