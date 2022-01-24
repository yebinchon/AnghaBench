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
struct scsi_qla_host {unsigned long pio_address; unsigned long pio_length; int /*<<< orphan*/  reg; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENOMEM ; 
 unsigned long IORESOURCE_IO ; 
 unsigned long IORESOURCE_MEM ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 unsigned long MIN_IOBASE_LEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*) ; 

int FUNC6(struct scsi_qla_host *ha)
{
	unsigned long pio, pio_len, pio_flags;
	unsigned long mmio, mmio_len, mmio_flags;

	pio = FUNC4(ha->pdev, 0);
	pio_len = FUNC3(ha->pdev, 0);
	pio_flags = FUNC2(ha->pdev, 0);
	if (pio_flags & IORESOURCE_IO) {
		if (pio_len < MIN_IOBASE_LEN) {
			FUNC5(KERN_WARNING, ha,
				"Invalid PCI I/O region size\n");
			pio = 0;
		}
	} else {
		FUNC5(KERN_WARNING, ha, "region #0 not a PIO resource\n");
		pio = 0;
	}

	/* Use MMIO operations for all accesses. */
	mmio = FUNC4(ha->pdev, 1);
	mmio_len = FUNC3(ha->pdev, 1);
	mmio_flags = FUNC2(ha->pdev, 1);

	if (!(mmio_flags & IORESOURCE_MEM)) {
		FUNC5(KERN_ERR, ha,
		    "region #0 not an MMIO resource, aborting\n");

		goto iospace_error_exit;
	}

	if (mmio_len < MIN_IOBASE_LEN) {
		FUNC5(KERN_ERR, ha,
		    "Invalid PCI mem region size, aborting\n");
		goto iospace_error_exit;
	}

	if (FUNC1(ha->pdev, DRIVER_NAME)) {
		FUNC5(KERN_WARNING, ha,
		    "Failed to reserve PIO/MMIO regions\n");

		goto iospace_error_exit;
	}

	ha->pio_address = pio;
	ha->pio_length = pio_len;
	ha->reg = FUNC0(mmio, MIN_IOBASE_LEN);
	if (!ha->reg) {
		FUNC5(KERN_ERR, ha,
		    "cannot remap MMIO, aborting\n");

		goto iospace_error_exit;
	}

	return 0;

iospace_error_exit:
	return -ENOMEM;
}