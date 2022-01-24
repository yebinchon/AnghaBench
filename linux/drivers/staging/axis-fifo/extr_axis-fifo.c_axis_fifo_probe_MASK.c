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
struct resource {int /*<<< orphan*/  start; int /*<<< orphan*/  end; } ;
struct device {int /*<<< orphan*/  kobj; } ;
struct platform_device {struct device dev; } ;
struct axis_fifo {unsigned int rx_fifo_depth; unsigned int tx_fifo_depth; unsigned int has_rx_fifo; unsigned int has_tx_fifo; struct resource* mem; int /*<<< orphan*/  base_addr; int /*<<< orphan*/  irq; int /*<<< orphan*/  devt; int /*<<< orphan*/  char_device; struct device* dt_device; struct device* device; int /*<<< orphan*/  write_queue_lock; int /*<<< orphan*/  read_queue_lock; int /*<<< orphan*/  write_queue; int /*<<< orphan*/  read_queue; } ;
typedef  int /*<<< orphan*/  device_name ;

/* Variables and functions */
 char* DRIVER_NAME ; 
 int EBUSY ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  axis_fifo_attrs_group ; 
 int /*<<< orphan*/  axis_fifo_driver_class ; 
 int /*<<< orphan*/  axis_fifo_irq ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,struct axis_fifo*) ; 
 struct device* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct axis_fifo* FUNC14 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fops ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct axis_fifo*) ; 
 int FUNC16 (struct axis_fifo*,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct axis_fifo*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC24 (struct axis_fifo*) ; 
 int /*<<< orphan*/  FUNC25 (struct resource*) ; 
 int /*<<< orphan*/  FUNC26 (char*,int,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC30(struct platform_device *pdev)
{
	struct resource *r_irq; /* interrupt resources */
	struct resource *r_mem; /* IO mem resources */
	struct device *dev = &pdev->dev; /* OS device (from device tree) */
	struct axis_fifo *fifo = NULL;

	char device_name[32];

	int rc = 0; /* error return value */

	/* IP properties from device tree */
	unsigned int rxd_tdata_width;
	unsigned int txc_tdata_width;
	unsigned int txd_tdata_width;
	unsigned int tdest_width;
	unsigned int tid_width;
	unsigned int tuser_width;
	unsigned int data_interface_type;
	unsigned int has_tdest;
	unsigned int has_tid;
	unsigned int has_tkeep;
	unsigned int has_tstrb;
	unsigned int has_tuser;
	unsigned int rx_fifo_depth;
	unsigned int rx_programmable_empty_threshold;
	unsigned int rx_programmable_full_threshold;
	unsigned int axi_id_width;
	unsigned int axi4_data_width;
	unsigned int select_xpm;
	unsigned int tx_fifo_depth;
	unsigned int tx_programmable_empty_threshold;
	unsigned int tx_programmable_full_threshold;
	unsigned int use_rx_cut_through;
	unsigned int use_rx_data;
	unsigned int use_tx_control;
	unsigned int use_tx_cut_through;
	unsigned int use_tx_data;

	/* ----------------------------
	 *     init wrapper device
	 * ----------------------------
	 */

	/* allocate device wrapper memory */
	fifo = FUNC14(dev, sizeof(*fifo), GFP_KERNEL);
	if (!fifo)
		return -ENOMEM;

	FUNC11(dev, fifo);
	fifo->dt_device = dev;

	FUNC17(&fifo->read_queue);
	FUNC17(&fifo->write_queue);

	FUNC27(&fifo->read_queue_lock);
	FUNC27(&fifo->write_queue_lock);

	/* ----------------------------
	 *   init device memory space
	 * ----------------------------
	 */

	/* get iospace for the device */
	r_mem = FUNC20(pdev, IORESOURCE_MEM, 0);
	if (!r_mem) {
		FUNC9(fifo->dt_device, "invalid address\n");
		rc = -ENODEV;
		goto err_initial;
	}

	fifo->mem = r_mem;

	/* request physical memory */
	if (!FUNC23(fifo->mem->start, FUNC25(fifo->mem),
				DRIVER_NAME)) {
		FUNC9(fifo->dt_device,
			"couldn't lock memory region at 0x%pa\n",
			&fifo->mem->start);
		rc = -EBUSY;
		goto err_initial;
	}
	FUNC8(fifo->dt_device, "got memory location [0x%pa - 0x%pa]\n",
		&fifo->mem->start, &fifo->mem->end);

	/* map physical memory to kernel virtual address space */
	fifo->base_addr = FUNC18(fifo->mem->start, FUNC25(fifo->mem));
	if (!fifo->base_addr) {
		FUNC9(fifo->dt_device, "couldn't map physical memory\n");
		rc = -ENOMEM;
		goto err_mem;
	}
	FUNC8(fifo->dt_device, "remapped memory to 0x%p\n", fifo->base_addr);

	/* create unique device name */
	FUNC26(device_name, sizeof(device_name), "%s_%pa",
		 DRIVER_NAME, &fifo->mem->start);

	FUNC8(fifo->dt_device, "device name [%s]\n", device_name);

	/* ----------------------------
	 *          init IP
	 * ----------------------------
	 */

	/* retrieve device tree properties */
	rc = FUNC16(fifo, "xlnx,axi-str-rxd-tdata-width",
			      &rxd_tdata_width);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,axi-str-txc-tdata-width",
			      &txc_tdata_width);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,axi-str-txd-tdata-width",
			      &txd_tdata_width);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,axis-tdest-width", &tdest_width);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,axis-tid-width", &tid_width);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,axis-tuser-width", &tuser_width);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,data-interface-type",
			      &data_interface_type);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,has-axis-tdest", &has_tdest);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,has-axis-tid", &has_tid);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,has-axis-tkeep", &has_tkeep);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,has-axis-tstrb", &has_tstrb);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,has-axis-tuser", &has_tuser);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,rx-fifo-depth", &rx_fifo_depth);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,rx-fifo-pe-threshold",
			      &rx_programmable_empty_threshold);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,rx-fifo-pf-threshold",
			      &rx_programmable_full_threshold);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,s-axi-id-width", &axi_id_width);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,s-axi4-data-width", &axi4_data_width);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,select-xpm", &select_xpm);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,tx-fifo-depth", &tx_fifo_depth);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,tx-fifo-pe-threshold",
			      &tx_programmable_empty_threshold);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,tx-fifo-pf-threshold",
			      &tx_programmable_full_threshold);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,use-rx-cut-through",
			      &use_rx_cut_through);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,use-rx-data", &use_rx_data);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,use-tx-ctrl", &use_tx_control);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,use-tx-cut-through",
			      &use_tx_cut_through);
	if (rc)
		goto err_unmap;
	rc = FUNC16(fifo, "xlnx,use-tx-data", &use_tx_data);
	if (rc)
		goto err_unmap;

	/* check validity of device tree properties */
	if (rxd_tdata_width != 32) {
		FUNC9(fifo->dt_device,
			"rxd_tdata_width width [%u] unsupported\n",
			rxd_tdata_width);
		rc = -EIO;
		goto err_unmap;
	}
	if (txd_tdata_width != 32) {
		FUNC9(fifo->dt_device,
			"txd_tdata_width width [%u] unsupported\n",
			txd_tdata_width);
		rc = -EIO;
		goto err_unmap;
	}
	if (has_tdest) {
		FUNC9(fifo->dt_device, "tdest not supported\n");
		rc = -EIO;
		goto err_unmap;
	}
	if (has_tid) {
		FUNC9(fifo->dt_device, "tid not supported\n");
		rc = -EIO;
		goto err_unmap;
	}
	if (has_tkeep) {
		FUNC9(fifo->dt_device, "tkeep not supported\n");
		rc = -EIO;
		goto err_unmap;
	}
	if (has_tstrb) {
		FUNC9(fifo->dt_device, "tstrb not supported\n");
		rc = -EIO;
		goto err_unmap;
	}
	if (has_tuser) {
		FUNC9(fifo->dt_device, "tuser not supported\n");
		rc = -EIO;
		goto err_unmap;
	}
	if (use_rx_cut_through) {
		FUNC9(fifo->dt_device, "rx cut-through not supported\n");
		rc = -EIO;
		goto err_unmap;
	}
	if (use_tx_cut_through) {
		FUNC9(fifo->dt_device, "tx cut-through not supported\n");
		rc = -EIO;
		goto err_unmap;
	}
	if (use_tx_control) {
		FUNC9(fifo->dt_device, "tx control not supported\n");
		rc = -EIO;
		goto err_unmap;
	}

	/* TODO
	 * these exist in the device tree but it's unclear what they do
	 * - select-xpm
	 * - data-interface-type
	 */

	/* set device wrapper properties based on IP config */
	fifo->rx_fifo_depth = rx_fifo_depth;
	/* IP sets TDFV to fifo depth - 4 so we will do the same */
	fifo->tx_fifo_depth = tx_fifo_depth - 4;
	fifo->has_rx_fifo = use_rx_data;
	fifo->has_tx_fifo = use_tx_data;

	FUNC24(fifo);

	/* ----------------------------
	 *    init device interrupts
	 * ----------------------------
	 */

	/* get IRQ resource */
	r_irq = FUNC20(pdev, IORESOURCE_IRQ, 0);
	if (!r_irq) {
		FUNC9(fifo->dt_device, "no IRQ found for 0x%pa\n",
			&fifo->mem->start);
		rc = -EIO;
		goto err_unmap;
	}

	/* request IRQ */
	fifo->irq = r_irq->start;
	rc = FUNC22(fifo->irq, &axis_fifo_irq, 0, DRIVER_NAME, fifo);
	if (rc) {
		FUNC9(fifo->dt_device, "couldn't allocate interrupt %i\n",
			fifo->irq);
		goto err_unmap;
	}

	/* ----------------------------
	 *      init char device
	 * ----------------------------
	 */

	/* allocate device number */
	rc = FUNC4(&fifo->devt, 0, 1, DRIVER_NAME);
	if (rc < 0)
		goto err_irq;
	FUNC8(fifo->dt_device, "allocated device number major %i minor %i\n",
		FUNC1(fifo->devt), FUNC2(fifo->devt));

	/* create driver file */
	fifo->device = FUNC12(axis_fifo_driver_class, NULL, fifo->devt,
				     NULL, device_name);
	if (FUNC0(fifo->device)) {
		FUNC9(fifo->dt_device,
			"couldn't create driver file\n");
		rc = FUNC3(fifo->device);
		goto err_chrdev_region;
	}
	FUNC11(fifo->device, fifo);

	/* create character device */
	FUNC7(&fifo->char_device, &fops);
	rc = FUNC5(&fifo->char_device, fifo->devt, 1);
	if (rc < 0) {
		FUNC9(fifo->dt_device, "couldn't create character device\n");
		goto err_dev;
	}

	/* create sysfs entries */
	rc = FUNC28(&fifo->device->kobj, &axis_fifo_attrs_group);
	if (rc < 0) {
		FUNC9(fifo->dt_device, "couldn't register sysfs group\n");
		goto err_cdev;
	}

	FUNC10(fifo->dt_device, "axis-fifo created at %pa mapped to 0x%pa, irq=%i, major=%i, minor=%i\n",
		 &fifo->mem->start, &fifo->base_addr, fifo->irq,
		 FUNC1(fifo->devt), FUNC2(fifo->devt));

	return 0;

err_cdev:
	FUNC6(&fifo->char_device);
err_dev:
	FUNC13(axis_fifo_driver_class, fifo->devt);
err_chrdev_region:
	FUNC29(fifo->devt, 1);
err_irq:
	FUNC15(fifo->irq, fifo);
err_unmap:
	FUNC19(fifo->base_addr);
err_mem:
	FUNC21(fifo->mem->start, FUNC25(fifo->mem));
err_initial:
	FUNC11(dev, NULL);
	return rc;
}