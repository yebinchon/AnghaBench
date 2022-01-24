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
struct spi_master {int dummy; } ;
struct pci_dev {int dummy; } ;
struct octeon_spi {scalar_t__ register_base; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct octeon_spi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC2 (struct pci_dev*) ; 
 struct octeon_spi* FUNC3 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct spi_master *master = FUNC2(pdev);
	struct octeon_spi *p;

	p = FUNC3(master);
	if (!p)
		return;

	FUNC1(p->clk);
	/* Put everything in a known state. */
	FUNC4(0, p->register_base + FUNC0(p));
}