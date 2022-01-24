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
struct slgt_info {int port_count; int irq_requested; TYPE_1__* pdev; int /*<<< orphan*/  line; int /*<<< orphan*/  port; int /*<<< orphan*/  gpio_present; int /*<<< orphan*/  init_error; int /*<<< orphan*/  irq_level; int /*<<< orphan*/  device_name; int /*<<< orphan*/  irq_flags; int /*<<< orphan*/  reg_addr; int /*<<< orphan*/  lock; int /*<<< orphan*/  port_array; } ;
struct pci_dev {scalar_t__ device; } ;
typedef  int /*<<< orphan*/  port_array ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SLGT_MAX_PORTS ; 
 scalar_t__ SYNCLINK_GT2_DEVICE_ID ; 
 scalar_t__ SYNCLINK_GT4_DEVICE_ID ; 
 int /*<<< orphan*/  FUNC1 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct slgt_info*) ; 
 struct slgt_info* FUNC3 (int,int,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct slgt_info**,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct slgt_info*) ; 
 int /*<<< orphan*/  serial_driver ; 
 int /*<<< orphan*/  slgt_interrupt ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(int adapter_num, struct pci_dev *pdev)
{
	struct slgt_info *port_array[SLGT_MAX_PORTS];
	int i;
	int port_count = 1;

	if (pdev->device == SYNCLINK_GT2_DEVICE_ID)
		port_count = 2;
	else if (pdev->device == SYNCLINK_GT4_DEVICE_ID)
		port_count = 4;

	/* allocate device instances for all ports */
	for (i=0; i < port_count; ++i) {
		port_array[i] = FUNC3(adapter_num, i, pdev);
		if (port_array[i] == NULL) {
			for (--i; i >= 0; --i) {
				FUNC10(&port_array[i]->port);
				FUNC6(port_array[i]);
			}
			return;
		}
	}

	/* give copy of port_array to all ports and add to device list  */
	for (i=0; i < port_count; ++i) {
		FUNC7(port_array[i]->port_array, port_array, sizeof(port_array));
		FUNC2(port_array[i]);
		port_array[i]->port_count = port_count;
		FUNC9(&port_array[i]->lock);
	}

	/* Allocate and claim adapter resources */
	if (!FUNC5(port_array[0])) {

		FUNC4(port_array[0]);

		/* copy resource information from first port to others */
		for (i = 1; i < port_count; ++i) {
			port_array[i]->irq_level = port_array[0]->irq_level;
			port_array[i]->reg_addr  = port_array[0]->reg_addr;
			FUNC4(port_array[i]);
		}

		if (FUNC8(port_array[0]->irq_level,
					slgt_interrupt,
					port_array[0]->irq_flags,
					port_array[0]->device_name,
					port_array[0]) < 0) {
			FUNC0(("%s request_irq failed IRQ=%d\n",
				port_array[0]->device_name,
				port_array[0]->irq_level));
		} else {
			port_array[0]->irq_requested = true;
			FUNC1(port_array[0]);
			for (i=1 ; i < port_count ; i++) {
				port_array[i]->init_error = port_array[0]->init_error;
				port_array[i]->gpio_present = port_array[0]->gpio_present;
			}
		}
	}

	for (i = 0; i < port_count; ++i) {
		struct slgt_info *info = port_array[i];
		FUNC11(&info->port, serial_driver, info->line,
				&info->pdev->dev);
	}
}