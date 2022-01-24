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
struct TYPE_3__ {int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; } ;
struct TYPE_4__ {int /*<<< orphan*/  lut; int /*<<< orphan*/  addr; int /*<<< orphan*/  cntl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 TYPE_2__* rbv_cmap_regs ; 

__attribute__((used)) static int FUNC4(unsigned int regno, unsigned int red,
			  unsigned int green, unsigned int blue,
			  struct fb_info *info)
{
	unsigned long flags;

	FUNC1(flags);

	/* From the VideoToolbox driver.  Seems to be saying that
	 * regno #254 and #255 are the important ones for 1-bit color,
	 * regno #252-255 are the important ones for 2-bit color, etc.
	 */
	regno += 256 - (1 << info->var.bits_per_pixel);

	/* reset clut? (VideoToolbox sez "not necessary") */
	FUNC3(0xFF, &rbv_cmap_regs->cntl);
	FUNC2();

	/* tell clut which address to use. */
	FUNC3(regno, &rbv_cmap_regs->addr);
	FUNC2();

	/* send one color channel at a time. */
	FUNC3(red, &rbv_cmap_regs->lut);
	FUNC2();
	FUNC3(green, &rbv_cmap_regs->lut);
	FUNC2();
	FUNC3(blue, &rbv_cmap_regs->lut);

	FUNC0(flags);
	return 0;
}