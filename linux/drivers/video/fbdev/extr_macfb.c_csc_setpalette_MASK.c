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
struct fb_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  clut_data; int /*<<< orphan*/  clut_waddr; } ;

/* Variables and functions */
 TYPE_1__* csc_cmap_regs ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(unsigned int regno, unsigned int red,
			  unsigned int green, unsigned int blue,
			  struct fb_info *info)
{
	unsigned long flags;

	FUNC1(flags);

	FUNC3(1); /* mklinux on PB 5300 waits for 260 ns */
	FUNC2(regno, &csc_cmap_regs->clut_waddr);
	FUNC2(red, &csc_cmap_regs->clut_data);
	FUNC2(green, &csc_cmap_regs->clut_data);
	FUNC2(blue, &csc_cmap_regs->clut_data);

	FUNC0(flags);
	return 0;
}