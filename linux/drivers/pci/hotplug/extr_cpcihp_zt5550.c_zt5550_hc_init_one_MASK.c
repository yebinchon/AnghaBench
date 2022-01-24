#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct cpci_hp_controller {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  irq; } ;
struct TYPE_12__ {int /*<<< orphan*/  subordinate; } ;
struct TYPE_11__ {TYPE_6__* dev_id; int /*<<< orphan*/  irq_flags; int /*<<< orphan*/  irq; TYPE_1__* ops; } ;
struct TYPE_10__ {int /*<<< orphan*/  check_irq; int /*<<< orphan*/  disable_irq; int /*<<< orphan*/  enable_irq; int /*<<< orphan*/  query_enum; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_DEC_21154 ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_DEC ; 
 int /*<<< orphan*/  bus0 ; 
 TYPE_3__* bus0_dev ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 TYPE_6__* hc_dev ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  poll ; 
 int /*<<< orphan*/  zt5550_hc_check_irq ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  zt5550_hc_disable_irq ; 
 int /*<<< orphan*/  zt5550_hc_enable_irq ; 
 int /*<<< orphan*/  zt5550_hc_query_enum ; 
 TYPE_2__ zt5550_hpc ; 
 TYPE_1__ zt5550_hpc_ops ; 

__attribute__((used)) static int FUNC13(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	int status;

	status = FUNC12(pdev);
	if (status != 0)
		return status;

	FUNC5("returned from zt5550_hc_config");

	FUNC8(&zt5550_hpc, 0, sizeof(struct cpci_hp_controller));
	zt5550_hpc_ops.query_enum = zt5550_hc_query_enum;
	zt5550_hpc.ops = &zt5550_hpc_ops;
	if (!poll) {
		zt5550_hpc.irq = hc_dev->irq;
		zt5550_hpc.irq_flags = IRQF_SHARED;
		zt5550_hpc.dev_id = hc_dev;

		zt5550_hpc_ops.enable_irq = zt5550_hc_enable_irq;
		zt5550_hpc_ops.disable_irq = zt5550_hc_disable_irq;
		zt5550_hpc_ops.check_irq = zt5550_hc_check_irq;
	} else {
		FUNC7("using ENUM# polling mode");
	}

	status = FUNC1(&zt5550_hpc);
	if (status != 0) {
		FUNC6("could not register cPCI hotplug controller");
		goto init_hc_error;
	}
	FUNC5("registered controller");

	/* Look for first device matching cPCI bus's bridge vendor and device IDs */
	bus0_dev = FUNC10(PCI_VENDOR_ID_DEC,
				  PCI_DEVICE_ID_DEC_21154, NULL);
	if (!bus0_dev) {
		status = -ENODEV;
		goto init_register_error;
	}
	bus0 = bus0_dev->subordinate;
	FUNC9(bus0_dev);

	status = FUNC0(bus0, 0x0a, 0x0f);
	if (status != 0) {
		FUNC6("could not register cPCI hotplug bus");
		goto init_register_error;
	}
	FUNC5("registered bus");

	status = FUNC2();
	if (status != 0) {
		FUNC6("could not started cPCI hotplug system");
		FUNC3(bus0);
		goto init_register_error;
	}
	FUNC5("started cpci hp system");

	return 0;
init_register_error:
	FUNC4(&zt5550_hpc);
init_hc_error:
	FUNC6("status = %d", status);
	FUNC11();
	return status;

}