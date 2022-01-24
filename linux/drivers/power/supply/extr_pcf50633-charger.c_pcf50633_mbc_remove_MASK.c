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
struct platform_device {int dummy; } ;
struct pcf50633_mbc {int /*<<< orphan*/  ac; int /*<<< orphan*/  adapter; int /*<<< orphan*/  usb; int /*<<< orphan*/  pcf; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * mbc_irq_handlers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pcf50633_mbc* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct pcf50633_mbc *mbc = FUNC2(pdev);
	int i;

	/* Remove IRQ handlers */
	for (i = 0; i < FUNC0(mbc_irq_handlers); i++)
		FUNC1(mbc->pcf, mbc_irq_handlers[i]);

	FUNC3(mbc->usb);
	FUNC3(mbc->adapter);
	FUNC3(mbc->ac);

	return 0;
}