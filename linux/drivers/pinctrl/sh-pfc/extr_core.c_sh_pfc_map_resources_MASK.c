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
struct sh_pfc_window {int /*<<< orphan*/  virt; int /*<<< orphan*/  size; int /*<<< orphan*/  phys; } ;
struct sh_pfc {unsigned int num_windows; unsigned int num_irqs; unsigned int* irqs; int /*<<< orphan*/  dev; struct sh_pfc_window* windows; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct resource*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct platform_device*,unsigned int) ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 

__attribute__((used)) static int FUNC6(struct sh_pfc *pfc,
				struct platform_device *pdev)
{
	unsigned int num_windows, num_irqs;
	struct sh_pfc_window *windows;
	unsigned int *irqs = NULL;
	struct resource *res;
	unsigned int i;
	int irq;

	/* Count the MEM and IRQ resources. */
	for (num_windows = 0;; num_windows++) {
		res = FUNC4(pdev, IORESOURCE_MEM, num_windows);
		if (!res)
			break;
	}
	for (num_irqs = 0;; num_irqs++) {
		irq = FUNC3(pdev, num_irqs);
		if (irq == -EPROBE_DEFER)
			return irq;
		if (irq < 0)
			break;
	}

	if (num_windows == 0)
		return -EINVAL;

	/* Allocate memory windows and IRQs arrays. */
	windows = FUNC2(pfc->dev, num_windows, sizeof(*windows),
			       GFP_KERNEL);
	if (windows == NULL)
		return -ENOMEM;

	pfc->num_windows = num_windows;
	pfc->windows = windows;

	if (num_irqs) {
		irqs = FUNC2(pfc->dev, num_irqs, sizeof(*irqs),
				    GFP_KERNEL);
		if (irqs == NULL)
			return -ENOMEM;

		pfc->num_irqs = num_irqs;
		pfc->irqs = irqs;
	}

	/* Fill them. */
	for (i = 0; i < num_windows; i++) {
		res = FUNC4(pdev, IORESOURCE_MEM, i);
		windows->phys = res->start;
		windows->size = FUNC5(res);
		windows->virt = FUNC1(pfc->dev, res);
		if (FUNC0(windows->virt))
			return -ENOMEM;
		windows++;
	}
	for (i = 0; i < num_irqs; i++)
		*irqs++ = FUNC3(pdev, i);

	return 0;
}