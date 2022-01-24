#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct resource {void* flags; } ;
struct TYPE_5__ {int /*<<< orphan*/ * bus; int /*<<< orphan*/  parent; } ;
struct pci_dev {int hdr_type; int multifunction; int dma_mask; int revision; int class; int subsystem_vendor; int subsystem_device; int transparent; TYPE_1__* bus; struct resource* resource; int /*<<< orphan*/  broken_intx_masking; scalar_t__ non_compliant_bars; int /*<<< orphan*/  current_state; int /*<<< orphan*/  cfg_size; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; int /*<<< orphan*/  devfn; TYPE_3__ dev; int /*<<< orphan*/  error_state; int /*<<< orphan*/  sysdata; } ;
struct pci_bus_region {int start; int end; } ;
struct TYPE_4__ {int /*<<< orphan*/  number; int /*<<< orphan*/  bridge; int /*<<< orphan*/  sysdata; } ;

/* Variables and functions */
 int EIO ; 
 void* LEGACY_IO_RESOURCE ; 
 int /*<<< orphan*/  PCI_CAP_ID_SSVID ; 
 int /*<<< orphan*/  PCI_CB_SUBSYSTEM_ID ; 
 int /*<<< orphan*/  PCI_CB_SUBSYSTEM_VENDOR_ID ; 
 int PCI_CLASS_BRIDGE_CARDBUS ; 
 int PCI_CLASS_BRIDGE_PCI ; 
 int PCI_CLASS_NOT_DEFINED ; 
 int /*<<< orphan*/  PCI_CLASS_PROG ; 
 int PCI_CLASS_STORAGE_IDE ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_IO ; 
 int PCI_COMMAND_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  PCI_HEADER_TYPE_BRIDGE 130 
#define  PCI_HEADER_TYPE_CARDBUS 129 
#define  PCI_HEADER_TYPE_NORMAL 128 
 int /*<<< orphan*/  PCI_ROM_ADDRESS ; 
 int /*<<< orphan*/  PCI_ROM_ADDRESS1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_SSVID_DEVICE_ID ; 
 int /*<<< orphan*/  PCI_SSVID_VENDOR_ID ; 
 int /*<<< orphan*/  PCI_UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  pci_bus_type ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  pci_channel_io_normal ; 
 int FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ pci_early_dump ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,char*,int,...) ; 
 int FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  pci_fixup_early ; 
 int FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*,int*,int*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,struct resource*,struct pci_bus_region*) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC24 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC25 (struct pci_dev*) ; 

int FUNC26(struct pci_dev *dev)
{
	u32 class;
	u16 cmd;
	u8 hdr_type;
	int pos = 0;
	struct pci_bus_region region;
	struct resource *res;

	hdr_type = FUNC11(dev);

	dev->sysdata = dev->bus->sysdata;
	dev->dev.parent = dev->bus->bridge;
	dev->dev.bus = &pci_bus_type;
	dev->hdr_type = hdr_type & 0x7f;
	dev->multifunction = !!(hdr_type & 0x80);
	dev->error_state = pci_channel_io_normal;
	FUNC23(dev);

	FUNC6(dev);

	/*
	 * Assume 32-bit PCI; let 64-bit PCI cards (which are far rarer)
	 * set this higher, assuming the system even supports it.
	 */
	dev->dma_mask = 0xffffffff;

	FUNC2(&dev->dev, "%04x:%02x:%02x.%d", FUNC7(dev->bus),
		     dev->bus->number, FUNC1(dev->devfn),
		     FUNC0(dev->devfn));

	class = FUNC5(dev);

	dev->revision = class & 0xff;
	dev->class = class >> 8;		    /* upper 3 bytes */

	FUNC12(dev, "[%04x:%04x] type %02x class %#08x\n",
		   dev->vendor, dev->device, dev->hdr_type, dev->class);

	if (pci_early_dump)
		FUNC3(dev);

	/* Need to have dev->class ready */
	dev->cfg_size = FUNC4(dev);

	/* Need to have dev->cfg_size ready */
	FUNC24(dev);

	FUNC25(dev);

	/* "Unknown power state" */
	dev->current_state = PCI_UNKNOWN;

	/* Early fixups, before probing the BARs */
	FUNC10(pci_fixup_early, dev);

	/* Device class may be changed after fixup */
	class = dev->class >> 8;

	if (dev->non_compliant_bars) {
		FUNC17(dev, PCI_COMMAND, &cmd);
		if (cmd & (PCI_COMMAND_IO | PCI_COMMAND_MEMORY)) {
			FUNC12(dev, "device has non-compliant BARs; disabling IO/MEM decoding\n");
			cmd &= ~PCI_COMMAND_IO;
			cmd &= ~PCI_COMMAND_MEMORY;
			FUNC20(dev, PCI_COMMAND, cmd);
		}
	}

	dev->broken_intx_masking = FUNC13(dev);

	switch (dev->hdr_type) {		    /* header type */
	case PCI_HEADER_TYPE_NORMAL:		    /* standard header */
		if (class == PCI_CLASS_BRIDGE_PCI)
			goto bad;
		FUNC18(dev);
		FUNC14(dev, 6, PCI_ROM_ADDRESS);

		FUNC19(dev, &dev->subsystem_vendor, &dev->subsystem_device);

		/*
		 * Do the ugly legacy mode stuff here rather than broken chip
		 * quirk code. Legacy mode ATA controllers have fixed
		 * addresses. These are not always echoed in BAR0-3, and
		 * BAR0-3 in a few cases contain junk!
		 */
		if (class == PCI_CLASS_STORAGE_IDE) {
			u8 progif;
			FUNC16(dev, PCI_CLASS_PROG, &progif);
			if ((progif & 1) == 0) {
				region.start = 0x1F0;
				region.end = 0x1F7;
				res = &dev->resource[0];
				res->flags = LEGACY_IO_RESOURCE;
				FUNC21(dev->bus, res, &region);
				FUNC12(dev, "legacy IDE quirk: reg 0x10: %pR\n",
					 res);
				region.start = 0x3F6;
				region.end = 0x3F6;
				res = &dev->resource[1];
				res->flags = LEGACY_IO_RESOURCE;
				FUNC21(dev->bus, res, &region);
				FUNC12(dev, "legacy IDE quirk: reg 0x14: %pR\n",
					 res);
			}
			if ((progif & 4) == 0) {
				region.start = 0x170;
				region.end = 0x177;
				res = &dev->resource[2];
				res->flags = LEGACY_IO_RESOURCE;
				FUNC21(dev->bus, res, &region);
				FUNC12(dev, "legacy IDE quirk: reg 0x18: %pR\n",
					 res);
				region.start = 0x376;
				region.end = 0x376;
				res = &dev->resource[3];
				res->flags = LEGACY_IO_RESOURCE;
				FUNC21(dev->bus, res, &region);
				FUNC12(dev, "legacy IDE quirk: reg 0x1c: %pR\n",
					 res);
			}
		}
		break;

	case PCI_HEADER_TYPE_BRIDGE:		    /* bridge header */
		/*
		 * The PCI-to-PCI bridge spec requires that subtractive
		 * decoding (i.e. transparent) bridge must have programming
		 * interface code of 0x01.
		 */
		FUNC18(dev);
		dev->transparent = ((dev->class & 0xff) == 1);
		FUNC14(dev, 2, PCI_ROM_ADDRESS1);
		FUNC15(dev);
		FUNC22(dev);
		pos = FUNC9(dev, PCI_CAP_ID_SSVID);
		if (pos) {
			FUNC17(dev, pos + PCI_SSVID_VENDOR_ID, &dev->subsystem_vendor);
			FUNC17(dev, pos + PCI_SSVID_DEVICE_ID, &dev->subsystem_device);
		}
		break;

	case PCI_HEADER_TYPE_CARDBUS:		    /* CardBus bridge header */
		if (class != PCI_CLASS_BRIDGE_CARDBUS)
			goto bad;
		FUNC18(dev);
		FUNC14(dev, 1, 0);
		FUNC17(dev, PCI_CB_SUBSYSTEM_VENDOR_ID, &dev->subsystem_vendor);
		FUNC17(dev, PCI_CB_SUBSYSTEM_ID, &dev->subsystem_device);
		break;

	default:				    /* unknown header */
		FUNC8(dev, "unknown header type %02x, ignoring device\n",
			dev->hdr_type);
		return -EIO;

	bad:
		FUNC8(dev, "ignoring class %#08x (doesn't match header type %02x)\n",
			dev->class, dev->hdr_type);
		dev->class = PCI_CLASS_NOT_DEFINED << 8;
	}

	/* We found a fine healthy device, go go go... */
	return 0;
}