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
struct jet_cmap_regs {int /*<<< orphan*/  lut; int /*<<< orphan*/  addr; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 struct jet_cmap_regs* slot_addr ; 

__attribute__((used)) static int FUNC4(unsigned int regno, unsigned int red,
			  unsigned int green, unsigned int blue,
			  struct fb_info *info)
{
	struct jet_cmap_regs *cmap_regs = slot_addr;
	unsigned long flags;

	FUNC1(flags);

	FUNC3(regno, &cmap_regs->addr);
	FUNC2();
	FUNC3(red, &cmap_regs->lut);
	FUNC2();
	FUNC3(green, &cmap_regs->lut);
	FUNC2();
	FUNC3(blue, &cmap_regs->lut);

	FUNC0(flags);
	return 0;
}