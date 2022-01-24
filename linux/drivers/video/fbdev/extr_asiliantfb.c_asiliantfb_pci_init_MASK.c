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
typedef  int /*<<< orphan*/  u32 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; TYPE_1__* resource; } ;
struct fb_info {int /*<<< orphan*/ * screen_base; int /*<<< orphan*/ * par; int /*<<< orphan*/ * pseudo_palette; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int IORESOURCE_MEM ; 
 struct fb_info* FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 int FUNC2 (struct fb_info*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long,unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct pci_dev *dp,
			       const struct pci_device_id *ent)
{
	unsigned long addr, size;
	struct fb_info *p;
	int err;

	if ((dp->resource[0].flags & IORESOURCE_MEM) == 0)
		return -ENODEV;
	addr = FUNC6(dp, 0);
	size = FUNC5(dp, 0);
	if (addr == 0)
		return -ENODEV;
	if (!FUNC10(addr, size, "asiliantfb"))
		return -EBUSY;

	p = FUNC0(sizeof(u32) * 16, &dp->dev);
	if (!p)	{
		FUNC9(addr, size);
		return -ENOMEM;
	}
	p->pseudo_palette = p->par;
	p->par = NULL;

	p->screen_base = FUNC3(addr, 0x800000);
	if (p->screen_base == NULL) {
		FUNC9(addr, size);
		FUNC1(p);
		return -ENOMEM;
	}

	FUNC8(dp, 4, 0x02800083);
	FUNC11(3, p->screen_base + 0x400784);

	err = FUNC2(p, addr);
	if (err) {
		FUNC4(p->screen_base);
		FUNC9(addr, size);
		FUNC1(p);
		return err;
	}

	FUNC7(dp, p);
	return 0;
}