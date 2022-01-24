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
typedef  int /*<<< orphan*/  u16 ;
struct ssb_bus {scalar_t__ bustype; int /*<<< orphan*/  host_pci; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  PCI_STATUS ; 
 int /*<<< orphan*/  PCI_STATUS_SIG_TARGET_ABORT ; 
 scalar_t__ SSB_BUSTYPE_PCI ; 
 int /*<<< orphan*/  SSB_GPIO_IN ; 
 int /*<<< orphan*/  SSB_GPIO_OUT ; 
 int /*<<< orphan*/  SSB_GPIO_OUT_ENABLE ; 
 int SSB_GPIO_PLL ; 
 int SSB_GPIO_XTAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int FUNC6(struct ssb_bus *bus, u32 what, int turn_on)
{
	int err;
	u32 in, out, outenable;
	u16 pci_status;

	if (bus->bustype != SSB_BUSTYPE_PCI)
		return 0;

	err = FUNC1(bus->host_pci, SSB_GPIO_IN, &in);
	if (err)
		goto err_pci;
	err = FUNC1(bus->host_pci, SSB_GPIO_OUT, &out);
	if (err)
		goto err_pci;
	err = FUNC1(bus->host_pci, SSB_GPIO_OUT_ENABLE, &outenable);
	if (err)
		goto err_pci;

	outenable |= what;

	if (turn_on) {
		/* Avoid glitching the clock if GPRS is already using it.
		 * We can't actually read the state of the PLLPD so we infer it
		 * by the value of XTAL_PU which *is* readable via gpioin.
		 */
		if (!(in & SSB_GPIO_XTAL)) {
			if (what & SSB_GPIO_XTAL) {
				/* Turn the crystal on */
				out |= SSB_GPIO_XTAL;
				if (what & SSB_GPIO_PLL)
					out |= SSB_GPIO_PLL;
				err = FUNC3(bus->host_pci, SSB_GPIO_OUT, out);
				if (err)
					goto err_pci;
				err = FUNC3(bus->host_pci, SSB_GPIO_OUT_ENABLE,
							     outenable);
				if (err)
					goto err_pci;
				FUNC0(1);
			}
			if (what & SSB_GPIO_PLL) {
				/* Turn the PLL on */
				out &= ~SSB_GPIO_PLL;
				err = FUNC3(bus->host_pci, SSB_GPIO_OUT, out);
				if (err)
					goto err_pci;
				FUNC0(5);
			}
		}

		err = FUNC2(bus->host_pci, PCI_STATUS, &pci_status);
		if (err)
			goto err_pci;
		pci_status &= ~PCI_STATUS_SIG_TARGET_ABORT;
		err = FUNC4(bus->host_pci, PCI_STATUS, pci_status);
		if (err)
			goto err_pci;
	} else {
		if (what & SSB_GPIO_XTAL) {
			/* Turn the crystal off */
			out &= ~SSB_GPIO_XTAL;
		}
		if (what & SSB_GPIO_PLL) {
			/* Turn the PLL off */
			out |= SSB_GPIO_PLL;
		}
		err = FUNC3(bus->host_pci, SSB_GPIO_OUT, out);
		if (err)
			goto err_pci;
		err = FUNC3(bus->host_pci, SSB_GPIO_OUT_ENABLE, outenable);
		if (err)
			goto err_pci;
	}

out:
	return err;

err_pci:
	FUNC5("Error: ssb_pci_xtal() could not access PCI config space!\n");
	err = -EBUSY;
	goto out;
}