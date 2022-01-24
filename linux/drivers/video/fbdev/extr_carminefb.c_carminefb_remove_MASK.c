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
struct fb_fix_screeninfo {int /*<<< orphan*/  mmio_len; int /*<<< orphan*/  mmio_start; int /*<<< orphan*/  smem_len; int /*<<< orphan*/  smem_start; } ;
struct carmine_hw {int /*<<< orphan*/  v_regs; int /*<<< orphan*/  screen_mem; TYPE_1__** fb; } ;
struct TYPE_2__ {struct fb_fix_screeninfo fix; } ;

/* Variables and functions */
 scalar_t__ CARMINE_CTL_REG ; 
 scalar_t__ CARMINE_CTL_REG_CLOCK_ENABLE ; 
 scalar_t__ CARMINE_DISP0_REG ; 
 scalar_t__ CARMINE_DISP1_REG ; 
 scalar_t__ CARMINE_DISP_REG_DCM1 ; 
 int MAX_DISPLAY ; 
 int /*<<< orphan*/  FUNC0 (struct carmine_hw*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct carmine_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct carmine_hw* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *dev)
{
	struct carmine_hw *hw = FUNC5(dev);
	struct fb_fix_screeninfo fix;
	int i;

	/* in case we use only fb1 and not fb1 */
	if (hw->fb[0])
		fix = hw->fb[0]->fix;
	else
		fix = hw->fb[1]->fix;

	/* deactivate display(s) and switch clocks */
	FUNC0(hw, CARMINE_DISP0_REG + CARMINE_DISP_REG_DCM1, 0);
	FUNC0(hw, CARMINE_DISP1_REG + CARMINE_DISP_REG_DCM1, 0);
	FUNC0(hw, CARMINE_CTL_REG + CARMINE_CTL_REG_CLOCK_ENABLE, 0);

	for (i = 0; i < MAX_DISPLAY; i++)
		FUNC1(hw->fb[i]);

	FUNC2(hw->screen_mem);
	FUNC6(fix.smem_start, fix.smem_len);
	FUNC2(hw->v_regs);
	FUNC6(fix.mmio_start, fix.mmio_len);

	FUNC4(dev);
	FUNC3(hw);
}