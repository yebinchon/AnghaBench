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
struct tga_par {int /*<<< orphan*/  tga_mem_base; } ;
struct fb_info {int /*<<< orphan*/  cmap; struct tga_par* par; } ;
struct device {int dummy; } ;
typedef  scalar_t__ resource_size_t ;
struct TYPE_3__ {scalar_t__ end; scalar_t__ start; } ;
struct TYPE_4__ {TYPE_1__ resource; } ;

/* Variables and functions */
 int FUNC0 (struct device*) ; 
 struct fb_info* FUNC1 (struct device*) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 TYPE_2__* FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct fb_info*) ; 

__attribute__((used)) static void FUNC12(struct device *dev)
{
	resource_size_t bar0_start = 0, bar0_len = 0;
	int tga_bus_pci = FUNC2(dev);
	int tga_bus_tc = FUNC0(dev);
	struct fb_info *info = NULL;
	struct tga_par *par;

	info = FUNC1(dev);
	if (!info)
		return;

	par = info->par;
	FUNC11(info);
	FUNC3(&info->cmap);
	FUNC5(par->tga_mem_base);
	if (tga_bus_pci) {
		bar0_start = FUNC7(FUNC9(dev), 0);
		bar0_len = FUNC6(FUNC9(dev), 0);
	}
	if (tga_bus_tc) {
		bar0_start = FUNC10(dev)->resource.start;
		bar0_len = FUNC10(dev)->resource.end - bar0_start + 1;
	}
	FUNC8(bar0_start, bar0_len);
	FUNC4(info);
}