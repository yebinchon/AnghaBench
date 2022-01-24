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
struct pci_dev {int dummy; } ;
struct i810fb_par {int dummy; } ;
struct fb_info {struct i810fb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fb_info*,struct i810fb_par*) ; 
 struct fb_info* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	struct fb_info *info = FUNC1(dev);
	struct i810fb_par *par = info->par;

	FUNC3(info);  
	FUNC0(info, par);
	FUNC2("cleanup_module:  unloaded i810 framebuffer device\n");
}