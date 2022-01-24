#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dcon_priv {int /*<<< orphan*/  curr_src; int /*<<< orphan*/  pending_src; TYPE_1__* client; } ;
struct dcon_gpio {int /*<<< orphan*/  name; int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {unsigned int sci_interrupt; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct dcon_gpio*) ; 
 int BIT_GPIO12 ; 
 int /*<<< orphan*/  DCON_SOURCE_CPU ; 
 int /*<<< orphan*/  DCON_SOURCE_DCON ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VX855_GENL_PURPOSE_OUTPUT ; 
 int /*<<< orphan*/  VX855_GPI_SCI_SMI ; 
 TYPE_4__ acpi_gbl_FADT ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  dcon_interrupt ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/ * gpios ; 
 struct dcon_gpio* gpios_asis ; 
 TYPE_2__ gpios_table ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned int,...) ; 
 scalar_t__ FUNC11 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct dcon_priv*) ; 

__attribute__((used)) static int FUNC12(struct dcon_priv *dcon)
{
	unsigned int irq;
	const struct dcon_gpio *pin = &gpios_asis[0];
	int i;
	int ret;

	/* Add GPIO look up table */
	gpios_table.dev_id = FUNC4(&dcon->client->dev);
	FUNC6(&gpios_table);

	/* Get GPIO descriptor */
	for (i = 0; i < FUNC0(gpios_asis); i++) {
		gpios[i] = FUNC5(&dcon->client->dev, pin[i].name,
					  pin[i].flags);
		if (FUNC1(gpios[i])) {
			ret = FUNC2(gpios[i]);
			FUNC10("failed to request %s GPIO: %d\n", pin[i].name,
			       ret);
			return ret;
		}
	}

	FUNC3();

	/* set   PMIO_Rx52[6] to enable SCI/SMI on gpio12 */
	FUNC9(FUNC7(VX855_GPI_SCI_SMI) | BIT_GPIO12, VX855_GPI_SCI_SMI);

	/* Determine the current state of DCONLOAD, likely set by firmware */
	/* GPIO1 */
	dcon->curr_src = (FUNC8(VX855_GENL_PURPOSE_OUTPUT) & 0x1000) ?
			DCON_SOURCE_CPU : DCON_SOURCE_DCON;
	dcon->pending_src = dcon->curr_src;

	/* we're sharing the IRQ with ACPI */
	irq = acpi_gbl_FADT.sci_interrupt;
	if (FUNC11(irq, &dcon_interrupt, IRQF_SHARED, "DCON", dcon)) {
		FUNC10("DCON (IRQ%d) allocation failed\n", irq);
		return 1;
	}

	return 0;
}