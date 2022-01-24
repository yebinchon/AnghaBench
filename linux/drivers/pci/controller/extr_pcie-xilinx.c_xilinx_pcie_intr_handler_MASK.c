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
struct xilinx_pcie_port {int /*<<< orphan*/  leg_domain; struct device* dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PCI_MSI ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int XILINX_PCIE_INTR_CFG_TIMEOUT ; 
 int XILINX_PCIE_INTR_CORRECTABLE ; 
 int XILINX_PCIE_INTR_ECRC_ERR ; 
 int XILINX_PCIE_INTR_FATAL ; 
 int XILINX_PCIE_INTR_HOT_RESET ; 
 int XILINX_PCIE_INTR_INTX ; 
 int XILINX_PCIE_INTR_LINK_DOWN ; 
 int XILINX_PCIE_INTR_MSI ; 
 int XILINX_PCIE_INTR_MST_DECERR ; 
 int XILINX_PCIE_INTR_MST_ERRP ; 
 int XILINX_PCIE_INTR_MST_SLVERR ; 
 int XILINX_PCIE_INTR_NONFATAL ; 
 int XILINX_PCIE_INTR_SLV_CMPABT ; 
 int XILINX_PCIE_INTR_SLV_COMPL ; 
 int XILINX_PCIE_INTR_SLV_ERRP ; 
 int XILINX_PCIE_INTR_SLV_ILLBUR ; 
 int XILINX_PCIE_INTR_SLV_UNEXP ; 
 int XILINX_PCIE_INTR_SLV_UNSUPP ; 
 int XILINX_PCIE_INTR_STR_ERR ; 
 int /*<<< orphan*/  XILINX_PCIE_REG_IDR ; 
 int /*<<< orphan*/  XILINX_PCIE_REG_IMR ; 
 int /*<<< orphan*/  XILINX_PCIE_REG_RPIFR1 ; 
 int /*<<< orphan*/  XILINX_PCIE_REG_RPIFR2 ; 
 int XILINX_PCIE_RPIFR1_ALL_MASK ; 
 int XILINX_PCIE_RPIFR1_INTR_MASK ; 
 int XILINX_PCIE_RPIFR1_INTR_SHIFT ; 
 int XILINX_PCIE_RPIFR1_INTR_VALID ; 
 int XILINX_PCIE_RPIFR1_MSI_INTR ; 
 int XILINX_PCIE_RPIFR2_MSG_DATA ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct xilinx_pcie_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xilinx_pcie_port*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xilinx_pcie_port*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *data)
{
	struct xilinx_pcie_port *port = (struct xilinx_pcie_port *)data;
	struct device *dev = port->dev;
	u32 val, mask, status;

	/* Read interrupt decode and mask registers */
	val = FUNC5(port, XILINX_PCIE_REG_IDR);
	mask = FUNC5(port, XILINX_PCIE_REG_IMR);

	status = val & mask;
	if (!status)
		return IRQ_NONE;

	if (status & XILINX_PCIE_INTR_LINK_DOWN)
		FUNC2(dev, "Link Down\n");

	if (status & XILINX_PCIE_INTR_ECRC_ERR)
		FUNC2(dev, "ECRC failed\n");

	if (status & XILINX_PCIE_INTR_STR_ERR)
		FUNC2(dev, "Streaming error\n");

	if (status & XILINX_PCIE_INTR_HOT_RESET)
		FUNC1(dev, "Hot reset\n");

	if (status & XILINX_PCIE_INTR_CFG_TIMEOUT)
		FUNC2(dev, "ECAM access timeout\n");

	if (status & XILINX_PCIE_INTR_CORRECTABLE) {
		FUNC2(dev, "Correctable error message\n");
		FUNC7(port);
	}

	if (status & XILINX_PCIE_INTR_NONFATAL) {
		FUNC2(dev, "Non fatal error message\n");
		FUNC7(port);
	}

	if (status & XILINX_PCIE_INTR_FATAL) {
		FUNC2(dev, "Fatal error message\n");
		FUNC7(port);
	}

	if (status & (XILINX_PCIE_INTR_INTX | XILINX_PCIE_INTR_MSI)) {
		val = FUNC5(port, XILINX_PCIE_REG_RPIFR1);

		/* Check whether interrupt valid */
		if (!(val & XILINX_PCIE_RPIFR1_INTR_VALID)) {
			FUNC2(dev, "RP Intr FIFO1 read error\n");
			goto error;
		}

		/* Decode the IRQ number */
		if (val & XILINX_PCIE_RPIFR1_MSI_INTR) {
			val = FUNC5(port, XILINX_PCIE_REG_RPIFR2) &
				XILINX_PCIE_RPIFR2_MSG_DATA;
		} else {
			val = (val & XILINX_PCIE_RPIFR1_INTR_MASK) >>
				XILINX_PCIE_RPIFR1_INTR_SHIFT;
			val = FUNC4(port->leg_domain, val);
		}

		/* Clear interrupt FIFO register 1 */
		FUNC6(port, XILINX_PCIE_RPIFR1_ALL_MASK,
			   XILINX_PCIE_REG_RPIFR1);

		/* Handle the interrupt */
		if (FUNC0(CONFIG_PCI_MSI) ||
		    !(val & XILINX_PCIE_RPIFR1_MSI_INTR))
			FUNC3(val);
	}

	if (status & XILINX_PCIE_INTR_SLV_UNSUPP)
		FUNC2(dev, "Slave unsupported request\n");

	if (status & XILINX_PCIE_INTR_SLV_UNEXP)
		FUNC2(dev, "Slave unexpected completion\n");

	if (status & XILINX_PCIE_INTR_SLV_COMPL)
		FUNC2(dev, "Slave completion timeout\n");

	if (status & XILINX_PCIE_INTR_SLV_ERRP)
		FUNC2(dev, "Slave Error Poison\n");

	if (status & XILINX_PCIE_INTR_SLV_CMPABT)
		FUNC2(dev, "Slave Completer Abort\n");

	if (status & XILINX_PCIE_INTR_SLV_ILLBUR)
		FUNC2(dev, "Slave Illegal Burst\n");

	if (status & XILINX_PCIE_INTR_MST_DECERR)
		FUNC2(dev, "Master decode error\n");

	if (status & XILINX_PCIE_INTR_MST_SLVERR)
		FUNC2(dev, "Master slave error\n");

	if (status & XILINX_PCIE_INTR_MST_ERRP)
		FUNC2(dev, "Master error poison\n");

error:
	/* Clear the Interrupt Decode register */
	FUNC6(port, status, XILINX_PCIE_REG_IDR);

	return IRQ_HANDLED;
}