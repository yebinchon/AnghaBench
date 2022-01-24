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
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct fb_info {TYPE_1__ pixmap; int /*<<< orphan*/  cmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct fb_info*) ; 

__attribute__((used)) static void FUNC10(struct pci_dev *dev)
{
	struct fb_info *info = FUNC4(dev);

	FUNC0("savagefb_remove");

	if (info) {
		FUNC9(info);

#ifdef CONFIG_FB_SAVAGE_I2C
		savagefb_delete_i2c_busses(info);
#endif
		FUNC1(&info->cmap, 0, 0);
		FUNC7(info);
		FUNC6(info);
		FUNC3(info->pixmap.addr);
		FUNC5(dev);
		FUNC2(info);
	}
}