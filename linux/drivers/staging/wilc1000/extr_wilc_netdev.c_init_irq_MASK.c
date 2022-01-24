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
struct wilc_vif {struct wilc* wilc; } ;
struct wilc {int /*<<< orphan*/  dev_irq_num; int /*<<< orphan*/  gpio_irq; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isr_bh_routine ; 
 int /*<<< orphan*/  isr_uh_routine ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct wilc_vif* FUNC4 (struct net_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	int ret = 0;
	struct wilc_vif *vif = FUNC4(dev);
	struct wilc *wl = vif->wilc;

	ret = FUNC0(wl->gpio_irq);
	if (ret) {
		FUNC3(dev, "could not obtain gpio for WILC_INTR\n");
		return ret;
	}

	wl->dev_irq_num = FUNC1(wl->gpio_irq);

	ret = FUNC5(wl->dev_irq_num, isr_uh_routine,
				   isr_bh_routine,
				   IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
				   "WILC_IRQ", dev);
	if (ret < 0)
		FUNC3(dev, "Failed to request IRQ\n");
	else
		FUNC2(dev, "IRQ request succeeded IRQ-NUM= %d\n",
			   wl->dev_irq_num);

	return ret;
}