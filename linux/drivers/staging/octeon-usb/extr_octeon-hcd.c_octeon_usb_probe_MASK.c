#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int cnt_enb; int cnt_val; } ;
union cvmx_iob_n2c_l2c_pri_cnt {scalar_t__ u64; TYPE_2__ s; } ;
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {int uses_new_polling; TYPE_3__ self; scalar_t__ hcd_priv; } ;
struct resource {int start; } ;
struct device {TYPE_1__* of_node; } ;
struct platform_device {struct device dev; } ;
struct octeon_hcd {int init_flags; int index; int idle_hardware_channels; int /*<<< orphan*/ * active_pipes; int /*<<< orphan*/  idle_pipes; int /*<<< orphan*/  lock; } ;
struct device_node {int dummy; } ;
typedef  int irq_hw_number_t ;
struct TYPE_4__ {struct device_node* parent; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CVMX_IOB_N2C_L2C_PRI_CNT ; 
 int CVMX_USB_INITIALIZE_FLAGS_CLOCK_12MHZ ; 
 int CVMX_USB_INITIALIZE_FLAGS_CLOCK_24MHZ ; 
 int CVMX_USB_INITIALIZE_FLAGS_CLOCK_48MHZ ; 
 int CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_GND ; 
 int CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_XI ; 
 int CVMX_USB_INITIALIZE_FLAGS_NO_DMA ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  OCTEON_CN31XX ; 
 int /*<<< orphan*/  OCTEON_CN52XX ; 
 int /*<<< orphan*/  OCTEON_CN56XX ; 
 int /*<<< orphan*/  OCTEON_CN5XXX ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,struct octeon_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  octeon_hc_driver ; 
 int FUNC13 (struct device_node*,char*,char const**) ; 
 int FUNC14 (struct device_node*,char*,int*) ; 
 int FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (char*,char const*) ; 
 int FUNC19 (struct usb_hcd*,int,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC20 (int /*<<< orphan*/ *,struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	int status;
	int initialize_flags;
	int usb_num;
	struct resource *res_mem;
	struct device_node *usbn_node;
	int irq = FUNC15(pdev, 0);
	struct device *dev = &pdev->dev;
	struct octeon_hcd *usb;
	struct usb_hcd *hcd;
	u32 clock_rate = 48000000;
	bool is_crystal_clock = false;
	const char *clock_type;
	int i;

	if (!dev->of_node) {
		FUNC7(dev, "Error: empty of_node\n");
		return -ENXIO;
	}
	usbn_node = dev->of_node->parent;

	i = FUNC14(usbn_node,
				 "clock-frequency", &clock_rate);
	if (i)
		i = FUNC14(usbn_node,
					 "refclk-frequency", &clock_rate);
	if (i) {
		FUNC7(dev, "No USBN \"clock-frequency\"\n");
		return -ENXIO;
	}
	switch (clock_rate) {
	case 12000000:
		initialize_flags = CVMX_USB_INITIALIZE_FLAGS_CLOCK_12MHZ;
		break;
	case 24000000:
		initialize_flags = CVMX_USB_INITIALIZE_FLAGS_CLOCK_24MHZ;
		break;
	case 48000000:
		initialize_flags = CVMX_USB_INITIALIZE_FLAGS_CLOCK_48MHZ;
		break;
	default:
		FUNC7(dev, "Illegal USBN \"clock-frequency\" %u\n",
			clock_rate);
		return -ENXIO;
	}

	i = FUNC13(usbn_node,
				    "cavium,refclk-type", &clock_type);
	if (i)
		i = FUNC13(usbn_node,
					    "refclk-type", &clock_type);

	if (!i && FUNC18("crystal", clock_type) == 0)
		is_crystal_clock = true;

	if (is_crystal_clock)
		initialize_flags |= CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_XI;
	else
		initialize_flags |= CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_GND;

	res_mem = FUNC16(pdev, IORESOURCE_MEM, 0);
	if (!res_mem) {
		FUNC7(dev, "found no memory resource\n");
		return -ENXIO;
	}
	usb_num = (res_mem->start >> 44) & 1;

	if (irq < 0) {
		/* Defective device tree, but we know how to fix it. */
		irq_hw_number_t hwirq = usb_num ? (1 << 6) + 17 : 56;

		irq = FUNC12(NULL, hwirq);
	}

	/*
	 * Set the DMA mask to 64bits so we get buffers already translated for
	 * DMA.
	 */
	i = FUNC11(dev, FUNC1(64));
	if (i)
		return i;

	/*
	 * Only cn52XX and cn56XX have DWC_OTG USB hardware and the
	 * IOB priority registers.  Under heavy network load USB
	 * hardware can be starved by the IOB causing a crash.  Give
	 * it a priority boost if it has been waiting more than 400
	 * cycles to avoid this situation.
	 *
	 * Testing indicates that a cnt_val of 8192 is not sufficient,
	 * but no failures are seen with 4096.  We choose a value of
	 * 400 to give a safety factor of 10.
	 */
	if (FUNC3(OCTEON_CN52XX) || FUNC3(OCTEON_CN56XX)) {
		union cvmx_iob_n2c_l2c_pri_cnt pri_cnt;

		pri_cnt.u64 = 0;
		pri_cnt.s.cnt_enb = 1;
		pri_cnt.s.cnt_val = 400;
		FUNC5(CVMX_IOB_N2C_L2C_PRI_CNT, pri_cnt.u64);
	}

	hcd = FUNC20(&octeon_hc_driver, dev, FUNC9(dev));
	if (!hcd) {
		FUNC6(dev, "Failed to allocate memory for HCD\n");
		return -1;
	}
	hcd->uses_new_polling = 1;
	usb = (struct octeon_hcd *)hcd->hcd_priv;

	FUNC17(&usb->lock);

	usb->init_flags = initialize_flags;

	/* Initialize the USB state structure */
	usb->index = usb_num;
	FUNC2(&usb->idle_pipes);
	for (i = 0; i < FUNC0(usb->active_pipes); i++)
		FUNC2(&usb->active_pipes[i]);

	/* Due to an errata, CN31XX doesn't support DMA */
	if (FUNC3(OCTEON_CN31XX)) {
		usb->init_flags |= CVMX_USB_INITIALIZE_FLAGS_NO_DMA;
		/* Only use one channel with non DMA */
		usb->idle_hardware_channels = 0x1;
	} else if (FUNC3(OCTEON_CN5XXX)) {
		/* CN5XXX have an errata with channel 3 */
		usb->idle_hardware_channels = 0xf7;
	} else {
		usb->idle_hardware_channels = 0xff;
	}

	status = FUNC4(dev, usb);
	if (status) {
		FUNC6(dev, "USB initialization failed with %d\n", status);
		FUNC21(hcd);
		return -1;
	}

	status = FUNC19(hcd, irq, 0);
	if (status) {
		FUNC6(dev, "USB add HCD failed with %d\n", status);
		FUNC21(hcd);
		return -1;
	}
	FUNC10(hcd->self.controller);

	FUNC8(dev, "Registered HCD for port %d on irq %d\n", usb_num, irq);

	return 0;
}