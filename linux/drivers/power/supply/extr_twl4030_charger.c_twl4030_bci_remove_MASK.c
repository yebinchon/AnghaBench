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
struct twl4030_bci {TYPE_2__* ac; TYPE_1__* usb; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWL4030_INTERRUPTS_BCIIMR1A ; 
 int /*<<< orphan*/  TWL4030_INTERRUPTS_BCIIMR2A ; 
 int /*<<< orphan*/  TWL4030_MODULE_INTERRUPTS ; 
 int /*<<< orphan*/  dev_attr_mode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct twl4030_bci* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct twl4030_bci*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct twl4030_bci*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct twl4030_bci *bci = FUNC1(pdev);

	FUNC2(bci, false);
	FUNC4(bci, false);
	FUNC3(0, 0);

	FUNC0(&bci->usb->dev, &dev_attr_mode);
	FUNC0(&bci->ac->dev, &dev_attr_mode);
	/* mask interrupts */
	FUNC5(TWL4030_MODULE_INTERRUPTS, 0xff,
			 TWL4030_INTERRUPTS_BCIIMR1A);
	FUNC5(TWL4030_MODULE_INTERRUPTS, 0xff,
			 TWL4030_INTERRUPTS_BCIIMR2A);

	return 0;
}