#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_3__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {int has_tt; TYPE_2__* regs; TYPE_1__ self; } ;
struct pci_dev {int vendor; int device; int revision; int /*<<< orphan*/  dev; } ;
struct ehci_hcd {int big_endian_mmio; int no_selective_suspend; int amd_pll_fix; int use_dummy_qh; int frame_index_bug; int hcs_params; int sbrn; int /*<<< orphan*/  command; int /*<<< orphan*/  has_ppcd; int /*<<< orphan*/  need_io_watchdog; TYPE_2__* debug; TYPE_2__* caps; } ;
struct TYPE_4__ {int /*<<< orphan*/  control; int /*<<< orphan*/  hcs_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_PPCEE ; 
 int DBGP_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  PCI_CAP_ID_DBG ; 
 int PCI_DEVICE_ID_INTEL_CE4100_USB ; 
 scalar_t__ PCI_DEVICE_ID_STMICRO_USB_HOST ; 
 int PCI_DEVICE_ID_TDI_EHCI ; 
#define  PCI_VENDOR_ID_AMD 136 
#define  PCI_VENDOR_ID_ATI 135 
#define  PCI_VENDOR_ID_INTEL 134 
#define  PCI_VENDOR_ID_NEC 133 
#define  PCI_VENDOR_ID_NETMOS 132 
#define  PCI_VENDOR_ID_NVIDIA 131 
 int PCI_VENDOR_ID_STMICRO ; 
#define  PCI_VENDOR_ID_TDI 130 
#define  PCI_VENDOR_ID_TOSHIBA_2 129 
#define  PCI_VENDOR_ID_VIA 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ehci_hcd*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ehci_hcd*,char*,...) ; 
 int FUNC10 (struct ehci_hcd*,struct pci_dev*) ; 
 int FUNC11 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC13 (struct ehci_hcd*,char*) ; 
 struct ehci_hcd* FUNC14 (struct usb_hcd*) ; 
 int FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 

__attribute__((used)) static int FUNC24(struct usb_hcd *hcd)
{
	struct ehci_hcd		*ehci = FUNC14(hcd);
	struct pci_dev		*pdev = FUNC21(hcd->self.controller);
	u32			temp;
	int			retval;

	ehci->caps = hcd->regs;

	/*
	 * ehci_init() causes memory for DMA transfers to be
	 * allocated.  Thus, any vendor-specific workarounds based on
	 * limiting the type of memory used for DMA transfers must
	 * happen before ehci_setup() is called.
	 *
	 * Most other workarounds can be done either before or after
	 * init and reset; they are located here too.
	 */
	switch (pdev->vendor) {
	case PCI_VENDOR_ID_TOSHIBA_2:
		/* celleb's companion chip */
		if (pdev->device == 0x01b5) {
#ifdef CONFIG_USB_EHCI_BIG_ENDIAN_MMIO
			ehci->big_endian_mmio = 1;
#else
			FUNC13(ehci,
				  "unsupported big endian Toshiba quirk\n");
#endif
		}
		break;
	case PCI_VENDOR_ID_NVIDIA:
		/* NVidia reports that certain chips don't handle
		 * QH, ITD, or SITD addresses above 2GB.  (But TD,
		 * data buffer, and periodic schedule are normal.)
		 */
		switch (pdev->device) {
		case 0x003c:	/* MCP04 */
		case 0x005b:	/* CK804 */
		case 0x00d8:	/* CK8 */
		case 0x00e8:	/* CK8S */
			if (FUNC19(pdev,
						FUNC0(31)) < 0)
				FUNC13(ehci, "can't enable NVidia "
					"workaround for >2GB RAM\n");
			break;

		/* Some NForce2 chips have problems with selective suspend;
		 * fixed in newer silicon.
		 */
		case 0x0068:
			if (pdev->revision < 0xa4)
				ehci->no_selective_suspend = 1;
			break;
		}
		break;
	case PCI_VENDOR_ID_INTEL:
		if (pdev->device == PCI_DEVICE_ID_INTEL_CE4100_USB)
			hcd->has_tt = 1;
		break;
	case PCI_VENDOR_ID_TDI:
		if (pdev->device == PCI_DEVICE_ID_TDI_EHCI)
			hcd->has_tt = 1;
		break;
	case PCI_VENDOR_ID_AMD:
		/* AMD PLL quirk */
		if (FUNC23())
			ehci->amd_pll_fix = 1;
		/* AMD8111 EHCI doesn't work, according to AMD errata */
		if (pdev->device == 0x7463) {
			FUNC9(ehci, "ignoring AMD8111 (errata)\n");
			retval = -EIO;
			goto done;
		}

		/*
		 * EHCI controller on AMD SB700/SB800/Hudson-2/3 platforms may
		 * read/write memory space which does not belong to it when
		 * there is NULL pointer with T-bit set to 1 in the frame list
		 * table. To avoid the issue, the frame list link pointer
		 * should always contain a valid pointer to a inactive qh.
		 */
		if (pdev->device == 0x7808) {
			ehci->use_dummy_qh = 1;
			FUNC9(ehci, "applying AMD SB700/SB800/Hudson-2/3 EHCI dummy qh workaround\n");
		}
		break;
	case PCI_VENDOR_ID_VIA:
		if (pdev->device == 0x3104 && (pdev->revision & 0xf0) == 0x60) {
			u8 tmp;

			/* The VT6212 defaults to a 1 usec EHCI sleep time which
			 * hogs the PCI bus *badly*. Setting bit 5 of 0x4B makes
			 * that sleep time use the conventional 10 usec.
			 */
			FUNC16(pdev, 0x4b, &tmp);
			if (tmp & 0x20)
				break;
			FUNC20(pdev, 0x4b, tmp | 0x20);
		}
		break;
	case PCI_VENDOR_ID_ATI:
		/* AMD PLL quirk */
		if (FUNC23())
			ehci->amd_pll_fix = 1;

		/*
		 * EHCI controller on AMD SB700/SB800/Hudson-2/3 platforms may
		 * read/write memory space which does not belong to it when
		 * there is NULL pointer with T-bit set to 1 in the frame list
		 * table. To avoid the issue, the frame list link pointer
		 * should always contain a valid pointer to a inactive qh.
		 */
		if (pdev->device == 0x4396) {
			ehci->use_dummy_qh = 1;
			FUNC9(ehci, "applying AMD SB700/SB800/Hudson-2/3 EHCI dummy qh workaround\n");
		}
		/* SB600 and old version of SB700 have a bug in EHCI controller,
		 * which causes usb devices lose response in some cases.
		 */
		if ((pdev->device == 0x4386 || pdev->device == 0x4396) &&
				FUNC22()) {
			u8 tmp;
			FUNC9(ehci, "applying AMD SB600/SB700 USB freeze workaround\n");
			FUNC16(pdev, 0x53, &tmp);
			FUNC20(pdev, 0x53, tmp | (1<<3));
		}
		break;
	case PCI_VENDOR_ID_NETMOS:
		/* MosChip frame-index-register bug */
		FUNC9(ehci, "applying MosChip frame-index workaround\n");
		ehci->frame_index_bug = 1;
		break;
	}

	/* optional debug port, normally in the first BAR */
	temp = FUNC15(pdev, PCI_CAP_ID_DBG);
	if (temp) {
		FUNC17(pdev, temp, &temp);
		temp >>= 16;
		if (((temp >> 13) & 7) == 1) {
			u32 hcs_params = FUNC11(ehci,
						    &ehci->caps->hcs_params);

			temp &= 0x1fff;
			ehci->debug = hcd->regs + temp;
			temp = FUNC11(ehci, &ehci->debug->control);
			FUNC9(ehci, "debug port %d%s\n",
				  FUNC1(hcs_params),
				  (temp & DBGP_ENABLED) ? " IN USE" : "");
			if (!(temp & DBGP_ENABLED))
				ehci->debug = NULL;
		}
	}

	retval = FUNC12(hcd);
	if (retval)
		return retval;

	/* These workarounds need to be applied after ehci_setup() */
	switch (pdev->vendor) {
	case PCI_VENDOR_ID_NEC:
	case PCI_VENDOR_ID_INTEL:
	case PCI_VENDOR_ID_AMD:
		ehci->need_io_watchdog = 0;
		break;
	case PCI_VENDOR_ID_NVIDIA:
		switch (pdev->device) {
		/* MCP89 chips on the MacBookAir3,1 give EPROTO when
		 * fetching device descriptors unless LPM is disabled.
		 * There are also intermittent problems enumerating
		 * devices with PPCD enabled.
		 */
		case 0x0d9d:
			FUNC9(ehci, "disable ppcd for nvidia mcp89\n");
			ehci->has_ppcd = 0;
			ehci->command &= ~CMD_PPCEE;
			break;
		}
		break;
	}

	/* at least the Genesys GL880S needs fixup here */
	temp = FUNC2(ehci->hcs_params) * FUNC3(ehci->hcs_params);
	temp &= 0x0f;
	if (temp && FUNC4(ehci->hcs_params) > temp) {
		FUNC8(ehci, "bogus port configuration: "
			"cc=%d x pcc=%d < ports=%d\n",
			FUNC2(ehci->hcs_params),
			FUNC3(ehci->hcs_params),
			FUNC4(ehci->hcs_params));

		switch (pdev->vendor) {
		case 0x17a0:		/* GENESYS */
			/* GL880S: should be PORTS=2 */
			temp |= (ehci->hcs_params & ~0xf);
			ehci->hcs_params = temp;
			break;
		case PCI_VENDOR_ID_NVIDIA:
			/* NF4: should be PCC=10 */
			break;
		}
	}

	/* Serial Bus Release Number is at PCI 0x60 offset */
	if (pdev->vendor == PCI_VENDOR_ID_STMICRO
	    && pdev->device == PCI_DEVICE_ID_STMICRO_USB_HOST)
		;	/* ConneXT has no sbrn register */
	else
		FUNC16(pdev, 0x60, &ehci->sbrn);

	/* Keep this around for a while just in case some EHCI
	 * implementation uses legacy PCI PM support.  This test
	 * can be removed on 17 Dec 2009 if the dev_warn() hasn't
	 * been triggered by then.
	 */
	if (!FUNC6(&pdev->dev)) {
		u16	port_wake;

		FUNC18(pdev, 0x62, &port_wake);
		if (port_wake & 0x0001) {
			FUNC5(&pdev->dev, "Enabling legacy PCI PM\n");
			FUNC7(&pdev->dev, 1);
		}
	}

#ifdef	CONFIG_PM
	if (ehci->no_selective_suspend && device_can_wakeup(&pdev->dev))
		ehci_warn(ehci, "selective suspend/wakeup unavailable\n");
#endif

	retval = FUNC10(ehci, pdev);
done:
	return retval;
}