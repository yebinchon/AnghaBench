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
struct w100fb_par {int /*<<< orphan*/  saved_extmem; int /*<<< orphan*/  saved_intmem; } ;
struct platform_device {int dummy; } ;
struct fb_info {int /*<<< orphan*/  cmap; int /*<<< orphan*/  pseudo_palette; struct w100fb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  remapped_base ; 
 int /*<<< orphan*/  remapped_fbuf ; 
 int /*<<< orphan*/  remapped_regs ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct fb_info *info = FUNC4(pdev);
	struct w100fb_par *par=info->par;

	FUNC5(info);

	FUNC6(par->saved_intmem);
	FUNC6(par->saved_extmem);
	FUNC3(info->pseudo_palette);
	FUNC0(&info->cmap);

	FUNC2(remapped_base);
	FUNC2(remapped_regs);
	FUNC2(remapped_fbuf);

	FUNC1(info);

	return 0;
}