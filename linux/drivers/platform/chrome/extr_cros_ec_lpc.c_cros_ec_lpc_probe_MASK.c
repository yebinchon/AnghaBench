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
typedef  char u8 ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct ec_response_get_protocol_info {int dummy; } ;
struct ec_host_response {int dummy; } ;
struct ec_host_request {int dummy; } ;
struct cros_ec_device {int din_size; int dout_size; int irq; int /*<<< orphan*/  cmd_readmem; int /*<<< orphan*/  pkt_xfer; int /*<<< orphan*/  cmd_xfer; int /*<<< orphan*/  phys_name; struct device* dev; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int /*<<< orphan*/  (* read ) (scalar_t__,int,char*) ;int /*<<< orphan*/  write; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALL_NOTIFY ; 
 struct acpi_device* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 scalar_t__ EC_HOST_CMD_REGION0 ; 
 scalar_t__ EC_HOST_CMD_REGION1 ; 
 int /*<<< orphan*/  EC_HOST_CMD_REGION_SIZE ; 
 scalar_t__ EC_LPC_ADDR_MEMMAP ; 
 scalar_t__ EC_MEMMAP_ID ; 
 int /*<<< orphan*/  EC_MEMMAP_SIZE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cros_ec_device*) ; 
 int /*<<< orphan*/  cros_ec_cmd_xfer_lpc ; 
 int /*<<< orphan*/  cros_ec_lpc_acpi_notify ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,char*) ; 
 int /*<<< orphan*/  cros_ec_lpc_mec_write_bytes ; 
 TYPE_1__ cros_ec_lpc_ops ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,char*) ; 
 int /*<<< orphan*/  cros_ec_lpc_readmem ; 
 int /*<<< orphan*/  cros_ec_lpc_write_bytes ; 
 int /*<<< orphan*/  cros_ec_pkt_xfer_lpc ; 
 int FUNC5 (struct cros_ec_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct cros_ec_device* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct cros_ec_device*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int,char*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct acpi_device *adev;
	acpi_status status;
	struct cros_ec_device *ec_dev;
	u8 buf[2];
	int irq, ret;

	if (!FUNC10(dev, EC_LPC_ADDR_MEMMAP, EC_MEMMAP_SIZE,
				 FUNC7(dev))) {
		FUNC6(dev, "couldn't reserve memmap region\n");
		return -EBUSY;
	}

	/*
	 * Read the mapped ID twice, the first one is assuming the
	 * EC is a Microchip Embedded Controller (MEC) variant, if the
	 * protocol fails, fallback to the non MEC variant and try to
	 * read again the ID.
	 */
	cros_ec_lpc_ops.read = cros_ec_lpc_mec_read_bytes;
	cros_ec_lpc_ops.write = cros_ec_lpc_mec_write_bytes;
	cros_ec_lpc_ops.read(EC_LPC_ADDR_MEMMAP + EC_MEMMAP_ID, 2, buf);
	if (buf[0] != 'E' || buf[1] != 'C') {
		/* Re-assign read/write operations for the non MEC variant */
		cros_ec_lpc_ops.read = cros_ec_lpc_read_bytes;
		cros_ec_lpc_ops.write = cros_ec_lpc_write_bytes;
		cros_ec_lpc_ops.read(EC_LPC_ADDR_MEMMAP + EC_MEMMAP_ID, 2,
				     buf);
		if (buf[0] != 'E' || buf[1] != 'C') {
			FUNC6(dev, "EC ID not detected\n");
			return -ENODEV;
		}
	}

	if (!FUNC10(dev, EC_HOST_CMD_REGION0,
				 EC_HOST_CMD_REGION_SIZE, FUNC7(dev))) {
		FUNC6(dev, "couldn't reserve region0\n");
		return -EBUSY;
	}
	if (!FUNC10(dev, EC_HOST_CMD_REGION1,
				 EC_HOST_CMD_REGION_SIZE, FUNC7(dev))) {
		FUNC6(dev, "couldn't reserve region1\n");
		return -EBUSY;
	}

	ec_dev = FUNC9(dev, sizeof(*ec_dev), GFP_KERNEL);
	if (!ec_dev)
		return -ENOMEM;

	FUNC12(pdev, ec_dev);
	ec_dev->dev = dev;
	ec_dev->phys_name = FUNC7(dev);
	ec_dev->cmd_xfer = cros_ec_cmd_xfer_lpc;
	ec_dev->pkt_xfer = cros_ec_pkt_xfer_lpc;
	ec_dev->cmd_readmem = cros_ec_lpc_readmem;
	ec_dev->din_size = sizeof(struct ec_host_response) +
			   sizeof(struct ec_response_get_protocol_info);
	ec_dev->dout_size = sizeof(struct ec_host_request);

	/*
	 * Some boards do not have an IRQ allotted for cros_ec_lpc,
	 * which makes ENXIO an expected (and safe) scenario.
	 */
	irq = FUNC11(pdev, 0);
	if (irq > 0)
		ec_dev->irq = irq;
	else if (irq != -ENXIO) {
		FUNC6(dev, "couldn't retrieve IRQ number (%d)\n", irq);
		return irq;
	}

	ret = FUNC5(ec_dev);
	if (ret) {
		FUNC6(dev, "couldn't register ec_dev (%d)\n", ret);
		return ret;
	}

	/*
	 * Connect a notify handler to process MKBP messages if we have a
	 * companion ACPI device.
	 */
	adev = FUNC0(dev);
	if (adev) {
		status = FUNC2(adev->handle,
						     ACPI_ALL_NOTIFY,
						     cros_ec_lpc_acpi_notify,
						     ec_dev);
		if (FUNC1(status))
			FUNC8(dev, "Failed to register notifier %08x\n",
				 status);
	}

	return 0;
}