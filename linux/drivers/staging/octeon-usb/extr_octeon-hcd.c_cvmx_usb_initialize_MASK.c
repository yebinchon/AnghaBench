#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int ate_reset; scalar_t__ hst_mode; } ;
union cvmx_usbnx_usbp_ctl_status {void* u64; TYPE_5__ s; } ;
struct TYPE_13__ {int por; int hrst; int prst; int hclk_rst; int enable; int p_rtype; int p_c_sel; int divide; scalar_t__ divide2; } ;
union cvmx_usbnx_clk_ctl {void* u64; TYPE_6__ s; } ;
struct TYPE_10__ {scalar_t__ fslspclksel; scalar_t__ fslssupp; } ;
union cvmx_usbcx_hcfg {void* u32; TYPE_3__ s; } ;
struct TYPE_8__ {int usbtrdtim; scalar_t__ phylpwrclksel; scalar_t__ ddrsel; scalar_t__ toutcal; } ;
union cvmx_usbcx_gusbcfg {void* u32; TYPE_1__ s; } ;
struct TYPE_11__ {int /*<<< orphan*/  prtint; int /*<<< orphan*/  disconnint; } ;
union cvmx_usbcx_gintsts {void* u32; TYPE_4__ s; } ;
struct TYPE_9__ {int otgintmsk; int modemismsk; int hchintmsk; int rxflvlmsk; scalar_t__ sofmsk; } ;
union cvmx_usbcx_gintmsk {void* u32; TYPE_2__ s; } ;
struct TYPE_14__ {int dmaen; int nptxfemplvl; int ptxfemplvl; int glblintrmsk; scalar_t__ hbstlen; } ;
union cvmx_usbcx_gahbcfg {void* u32; TYPE_7__ s; } ;
struct octeon_hcd {int init_flags; int /*<<< orphan*/  index; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
#define  CVMX_USB_INITIALIZE_FLAGS_CLOCK_12MHZ 130 
#define  CVMX_USB_INITIALIZE_FLAGS_CLOCK_24MHZ 129 
#define  CVMX_USB_INITIALIZE_FLAGS_CLOCK_48MHZ 128 
 int CVMX_USB_INITIALIZE_FLAGS_CLOCK_MHZ_MASK ; 
 int CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_GND ; 
 int CVMX_USB_INITIALIZE_FLAGS_NO_DMA ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  OCTEON_CN3XXX ; 
 int /*<<< orphan*/  OCTEON_CN50XX ; 
 int /*<<< orphan*/  OCTEON_CN56XX ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct octeon_hcd*) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 void* FUNC14 (struct octeon_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct octeon_hcd*) ; 
 int /*<<< orphan*/  FUNC16 (struct octeon_hcd*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  cvmx_usbcx_gintmsk ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct device*,char*,int) ; 
 int /*<<< orphan*/  disconnintmsk ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  prtintmsk ; 
 int /*<<< orphan*/  FUNC23 (int) ; 

__attribute__((used)) static int FUNC24(struct device *dev,
			       struct octeon_hcd *usb)
{
	int channel;
	int divisor;
	int retries = 0;
	union cvmx_usbcx_hcfg usbcx_hcfg;
	union cvmx_usbnx_clk_ctl usbn_clk_ctl;
	union cvmx_usbcx_gintsts usbc_gintsts;
	union cvmx_usbcx_gahbcfg usbcx_gahbcfg;
	union cvmx_usbcx_gintmsk usbcx_gintmsk;
	union cvmx_usbcx_gusbcfg usbcx_gusbcfg;
	union cvmx_usbnx_usbp_ctl_status usbn_usbp_ctl_status;

retry:
	/*
	 * Power On Reset and PHY Initialization
	 *
	 * 1. Wait for DCOK to assert (nothing to do)
	 *
	 * 2a. Write USBN0/1_CLK_CTL[POR] = 1 and
	 *     USBN0/1_CLK_CTL[HRST,PRST,HCLK_RST] = 0
	 */
	usbn_clk_ctl.u64 = FUNC13(FUNC6(usb->index));
	usbn_clk_ctl.s.por = 1;
	usbn_clk_ctl.s.hrst = 0;
	usbn_clk_ctl.s.prst = 0;
	usbn_clk_ctl.s.hclk_rst = 0;
	usbn_clk_ctl.s.enable = 0;
	/*
	 * 2b. Select the USB reference clock/crystal parameters by writing
	 *     appropriate values to USBN0/1_CLK_CTL[P_C_SEL, P_RTYPE, P_COM_ON]
	 */
	if (usb->init_flags & CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_GND) {
		/*
		 * The USB port uses 12/24/48MHz 2.5V board clock
		 * source at USB_XO. USB_XI should be tied to GND.
		 * Most Octeon evaluation boards require this setting
		 */
		if (FUNC9(OCTEON_CN3XXX) ||
		    FUNC9(OCTEON_CN56XX) ||
		    FUNC9(OCTEON_CN50XX))
			/* From CN56XX,CN50XX,CN31XX,CN30XX manuals */
			usbn_clk_ctl.s.p_rtype = 2; /* p_rclk=1 & p_xenbn=0 */
		else
			/* From CN52XX manual */
			usbn_clk_ctl.s.p_rtype = 1;

		switch (usb->init_flags &
			CVMX_USB_INITIALIZE_FLAGS_CLOCK_MHZ_MASK) {
		case CVMX_USB_INITIALIZE_FLAGS_CLOCK_12MHZ:
			usbn_clk_ctl.s.p_c_sel = 0;
			break;
		case CVMX_USB_INITIALIZE_FLAGS_CLOCK_24MHZ:
			usbn_clk_ctl.s.p_c_sel = 1;
			break;
		case CVMX_USB_INITIALIZE_FLAGS_CLOCK_48MHZ:
			usbn_clk_ctl.s.p_c_sel = 2;
			break;
		}
	} else {
		/*
		 * The USB port uses a 12MHz crystal as clock source
		 * at USB_XO and USB_XI
		 */
		if (FUNC9(OCTEON_CN3XXX))
			/* From CN31XX,CN30XX manual */
			usbn_clk_ctl.s.p_rtype = 3; /* p_rclk=1 & p_xenbn=1 */
		else
			/* From CN56XX,CN52XX,CN50XX manuals. */
			usbn_clk_ctl.s.p_rtype = 0;

		usbn_clk_ctl.s.p_c_sel = 0;
	}
	/*
	 * 2c. Select the HCLK via writing USBN0/1_CLK_CTL[DIVIDE, DIVIDE2] and
	 *     setting USBN0/1_CLK_CTL[ENABLE] = 1. Divide the core clock down
	 *     such that USB is as close as possible to 125Mhz
	 */
	divisor = FUNC8(FUNC22(), 125000000);
	/* Lower than 4 doesn't seem to work properly */
	if (divisor < 4)
		divisor = 4;
	usbn_clk_ctl.s.divide = divisor;
	usbn_clk_ctl.s.divide2 = 0;
	FUNC17(FUNC6(usb->index), usbn_clk_ctl.u64);

	/* 2d. Write USBN0/1_CLK_CTL[HCLK_RST] = 1 */
	usbn_clk_ctl.s.hclk_rst = 1;
	FUNC17(FUNC6(usb->index), usbn_clk_ctl.u64);
	/* 2e.  Wait 64 core-clock cycles for HCLK to stabilize */
	FUNC11(64);
	/*
	 * 3. Program the power-on reset field in the USBN clock-control
	 *    register:
	 *    USBN_CLK_CTL[POR] = 0
	 */
	usbn_clk_ctl.s.por = 0;
	FUNC17(FUNC6(usb->index), usbn_clk_ctl.u64);
	/* 4. Wait 1 ms for PHY clock to start */
	FUNC20(1);
	/*
	 * 5. Program the Reset input from automatic test equipment field in the
	 *    USBP control and status register:
	 *    USBN_USBP_CTL_STATUS[ATE_RESET] = 1
	 */
	usbn_usbp_ctl_status.u64 =
		FUNC13(FUNC7(usb->index));
	usbn_usbp_ctl_status.s.ate_reset = 1;
	FUNC17(FUNC7(usb->index),
			    usbn_usbp_ctl_status.u64);
	/* 6. Wait 10 cycles */
	FUNC11(10);
	/*
	 * 7. Clear ATE_RESET field in the USBN clock-control register:
	 *    USBN_USBP_CTL_STATUS[ATE_RESET] = 0
	 */
	usbn_usbp_ctl_status.s.ate_reset = 0;
	FUNC17(FUNC7(usb->index),
			    usbn_usbp_ctl_status.u64);
	/*
	 * 8. Program the PHY reset field in the USBN clock-control register:
	 *    USBN_CLK_CTL[PRST] = 1
	 */
	usbn_clk_ctl.s.prst = 1;
	FUNC17(FUNC6(usb->index), usbn_clk_ctl.u64);
	/*
	 * 9. Program the USBP control and status register to select host or
	 *    device mode. USBN_USBP_CTL_STATUS[HST_MODE] = 0 for host, = 1 for
	 *    device
	 */
	usbn_usbp_ctl_status.s.hst_mode = 0;
	FUNC17(FUNC7(usb->index),
			    usbn_usbp_ctl_status.u64);
	/* 10. Wait 1 us */
	FUNC23(1);
	/*
	 * 11. Program the hreset_n field in the USBN clock-control register:
	 *     USBN_CLK_CTL[HRST] = 1
	 */
	usbn_clk_ctl.s.hrst = 1;
	FUNC17(FUNC6(usb->index), usbn_clk_ctl.u64);
	/* 12. Proceed to USB core initialization */
	usbn_clk_ctl.s.enable = 1;
	FUNC17(FUNC6(usb->index), usbn_clk_ctl.u64);
	FUNC23(1);

	/*
	 * USB Core Initialization
	 *
	 * 1. Read USBC_GHWCFG1, USBC_GHWCFG2, USBC_GHWCFG3, USBC_GHWCFG4 to
	 *    determine USB core configuration parameters.
	 *
	 *    Nothing needed
	 *
	 * 2. Program the following fields in the global AHB configuration
	 *    register (USBC_GAHBCFG)
	 *    DMA mode, USBC_GAHBCFG[DMAEn]: 1 = DMA mode, 0 = slave mode
	 *    Burst length, USBC_GAHBCFG[HBSTLEN] = 0
	 *    Nonperiodic TxFIFO empty level (slave mode only),
	 *    USBC_GAHBCFG[NPTXFEMPLVL]
	 *    Periodic TxFIFO empty level (slave mode only),
	 *    USBC_GAHBCFG[PTXFEMPLVL]
	 *    Global interrupt mask, USBC_GAHBCFG[GLBLINTRMSK] = 1
	 */
	usbcx_gahbcfg.u32 = 0;
	usbcx_gahbcfg.s.dmaen = !(usb->init_flags &
				  CVMX_USB_INITIALIZE_FLAGS_NO_DMA);
	usbcx_gahbcfg.s.hbstlen = 0;
	usbcx_gahbcfg.s.nptxfemplvl = 1;
	usbcx_gahbcfg.s.ptxfemplvl = 1;
	usbcx_gahbcfg.s.glblintrmsk = 1;
	FUNC16(usb, FUNC0(usb->index),
			     usbcx_gahbcfg.u32);

	/*
	 * 3. Program the following fields in USBC_GUSBCFG register.
	 *    HS/FS timeout calibration, USBC_GUSBCFG[TOUTCAL] = 0
	 *    ULPI DDR select, USBC_GUSBCFG[DDRSEL] = 0
	 *    USB turnaround time, USBC_GUSBCFG[USBTRDTIM] = 0x5
	 *    PHY low-power clock select, USBC_GUSBCFG[PHYLPWRCLKSEL] = 0
	 */
	usbcx_gusbcfg.u32 = FUNC14(usb,
						FUNC3(usb->index));
	usbcx_gusbcfg.s.toutcal = 0;
	usbcx_gusbcfg.s.ddrsel = 0;
	usbcx_gusbcfg.s.usbtrdtim = 0x5;
	usbcx_gusbcfg.s.phylpwrclksel = 0;
	FUNC16(usb, FUNC3(usb->index),
			     usbcx_gusbcfg.u32);

	/*
	 * 4. The software must unmask the following bits in the USBC_GINTMSK
	 *    register.
	 *    OTG interrupt mask, USBC_GINTMSK[OTGINTMSK] = 1
	 *    Mode mismatch interrupt mask, USBC_GINTMSK[MODEMISMSK] = 1
	 */
	usbcx_gintmsk.u32 = FUNC14(usb,
						FUNC1(usb->index));
	usbcx_gintmsk.s.otgintmsk = 1;
	usbcx_gintmsk.s.modemismsk = 1;
	usbcx_gintmsk.s.hchintmsk = 1;
	usbcx_gintmsk.s.sofmsk = 0;
	/* We need RX FIFO interrupts if we don't have DMA */
	if (usb->init_flags & CVMX_USB_INITIALIZE_FLAGS_NO_DMA)
		usbcx_gintmsk.s.rxflvlmsk = 1;
	FUNC16(usb, FUNC1(usb->index),
			     usbcx_gintmsk.u32);

	/*
	 * Disable all channel interrupts. We'll enable them per channel later.
	 */
	for (channel = 0; channel < 8; channel++)
		FUNC16(usb,
				     FUNC5(channel, usb->index),
				     0);

	/*
	 * Host Port Initialization
	 *
	 * 1. Program the host-port interrupt-mask field to unmask,
	 *    USBC_GINTMSK[PRTINT] = 1
	 */
	FUNC10(FUNC1(usb->index),
			cvmx_usbcx_gintmsk, prtintmsk, 1);
	FUNC10(FUNC1(usb->index),
			cvmx_usbcx_gintmsk, disconnintmsk, 1);

	/*
	 * 2. Program the USBC_HCFG register to select full-speed host
	 *    or high-speed host.
	 */
	usbcx_hcfg.u32 = FUNC14(usb, FUNC4(usb->index));
	usbcx_hcfg.s.fslssupp = 0;
	usbcx_hcfg.s.fslspclksel = 0;
	FUNC16(usb, FUNC4(usb->index), usbcx_hcfg.u32);

	FUNC12(usb);

	/*
	 * If the controller is getting port events right after the reset, it
	 * means the initialization failed. Try resetting the controller again
	 * in such case. This is seen to happen after cold boot on DSR-1000N.
	 */
	usbc_gintsts.u32 = FUNC14(usb,
					       FUNC2(usb->index));
	FUNC16(usb, FUNC2(usb->index),
			     usbc_gintsts.u32);
	FUNC18(dev, "gintsts after reset: 0x%x\n", (int)usbc_gintsts.u32);
	if (!usbc_gintsts.s.disconnint && !usbc_gintsts.s.prtint)
		return 0;
	if (retries++ >= 5)
		return -EAGAIN;
	FUNC19(dev, "controller reset failed (gintsts=0x%x) - retrying\n",
		 (int)usbc_gintsts.u32);
	FUNC21(50);
	FUNC15(usb);
	FUNC21(50);
	goto retry;
}