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
struct cpcap_interrupt_desc {char const* name; int irq; int /*<<< orphan*/  node; int /*<<< orphan*/  action; } ;
struct cpcap_battery_ddata {int /*<<< orphan*/  irq_list; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPCAP_BATTERY_IRQ_ACTION_BATTERY_LOW ; 
 int /*<<< orphan*/  CPCAP_BATTERY_IRQ_ACTION_POWEROFF ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  cpcap_battery_irq_thread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 struct cpcap_interrupt_desc* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,struct cpcap_battery_ddata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct platform_device*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev,
				  struct cpcap_battery_ddata *ddata,
				  const char *name)
{
	struct cpcap_interrupt_desc *d;
	int irq, error;

	irq = FUNC4(pdev, name);
	if (irq < 0)
		return irq;

	error = FUNC2(ddata->dev, irq, NULL,
					  cpcap_battery_irq_thread,
					  IRQF_SHARED,
					  name, ddata);
	if (error) {
		FUNC0(ddata->dev, "could not get irq %s: %i\n",
			name, error);

		return error;
	}

	d = FUNC1(ddata->dev, sizeof(*d), GFP_KERNEL);
	if (!d)
		return -ENOMEM;

	d->name = name;
	d->irq = irq;

	if (!FUNC5(name, "lowbph", 6))
		d->action = CPCAP_BATTERY_IRQ_ACTION_BATTERY_LOW;
	else if (!FUNC5(name, "lowbpl", 6))
		d->action = CPCAP_BATTERY_IRQ_ACTION_POWEROFF;

	FUNC3(&d->node, &ddata->irq_list);

	return 0;
}