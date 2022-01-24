#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; TYPE_1__* resource; } ;
struct TYPE_8__ {int smem_len; } ;
struct fb_info {int /*<<< orphan*/ * screen_base; TYPE_3__ fix; int /*<<< orphan*/  node; } ;
struct TYPE_7__ {int /*<<< orphan*/  power; } ;
struct TYPE_9__ {TYPE_2__ props; } ;
struct TYPE_6__ {int flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int IORESOURCE_MEM ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 struct fb_info* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC6 (unsigned long,int) ; 
 int /*<<< orphan*/ * FUNC7 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int /*<<< orphan*/ ,unsigned short*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct pci_dev*,int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,int /*<<< orphan*/ ,unsigned short) ; 
 TYPE_4__* pmac_backlight ; 
 int /*<<< orphan*/  pmac_backlight_mutex ; 
 scalar_t__ FUNC18 (struct fb_info*) ; 

__attribute__((used)) static int FUNC19(struct pci_dev *dp, const struct pci_device_id *ent)
{
	struct fb_info *p;
	unsigned long addr;
	unsigned short cmd;
	int rc = -ENODEV;

	if (FUNC11(dp) < 0) {
		FUNC1(&dp->dev, "Cannot enable PCI device\n");
		goto err_out;
	}

	if ((dp->resource[0].flags & IORESOURCE_MEM) == 0)
		goto err_disable;
	addr = FUNC15(dp, 0);
	if (addr == 0)
		goto err_disable;

	p = FUNC3(0, &dp->dev);
	if (p == NULL) {
		rc = -ENOMEM;
		goto err_disable;
	}

	if (FUNC14(dp, 0, "chipsfb") != 0) {
		FUNC1(&dp->dev, "Cannot request framebuffer\n");
		rc = -EBUSY;
		goto err_release_fb;
	}

#ifdef __BIG_ENDIAN
	addr += 0x800000;	// Use big-endian aperture
#endif

	/* we should use pci_enable_device here, but,
	   the device doesn't declare its I/O ports in its BARs
	   so pci_enable_device won't turn on I/O responses */
	FUNC12(dp, PCI_COMMAND, &cmd);
	cmd |= 3;	/* enable memory and IO space */
	FUNC17(dp, PCI_COMMAND, cmd);

#ifdef CONFIG_PMAC_BACKLIGHT
	/* turn on the backlight */
	mutex_lock(&pmac_backlight_mutex);
	if (pmac_backlight) {
		pmac_backlight->props.power = FB_BLANK_UNBLANK;
		backlight_update_status(pmac_backlight);
	}
	mutex_unlock(&pmac_backlight_mutex);
#endif /* CONFIG_PMAC_BACKLIGHT */

#ifdef CONFIG_PPC
	p->screen_base = ioremap_wc(addr, 0x200000);
#else
	p->screen_base = FUNC6(addr, 0x200000);
#endif
	if (p->screen_base == NULL) {
		FUNC1(&dp->dev, "Cannot map framebuffer\n");
		rc = -ENOMEM;
		goto err_release_pci;
	}

	FUNC16(dp, p);

	FUNC5(p, addr);

	if (FUNC18(p) < 0) {
		FUNC1(&dp->dev,"C&T 65550 framebuffer failed to register\n");
		goto err_unmap;
	}

	FUNC2(&dp->dev,"fb%d: Chips 65550 frame buffer"
		 " (%dK RAM detected)\n",
		 p->node, p->fix.smem_len / 1024);

	return 0;

 err_unmap:
	FUNC8(p->screen_base);
 err_release_pci:
	FUNC13(dp, 0);
 err_release_fb:
	FUNC4(p);
 err_disable:
 err_out:
	return rc;
}