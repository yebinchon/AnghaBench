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
struct rt_stats {int dummy; } ;
struct r8192_priv {int /*<<< orphan*/  irq; int /*<<< orphan*/  gpio_polling_timer; int /*<<< orphan*/  watch_dog_timer; TYPE_1__* ops; int /*<<< orphan*/  stats; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* init_adapter_variable ) (struct net_device*) ;int /*<<< orphan*/  (* get_eeprom_size ) (struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct r8192_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  _rtl92e_irq ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  _rtl92e_watchdog_timer_cb ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*,...) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  rtl92e_check_rfctrl_gpio_timer ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 struct r8192_priv* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static short FUNC18(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC14(dev);

	FUNC9(&priv->stats, 0, sizeof(struct rt_stats));

	FUNC3(dev);
	FUNC2(dev);
	FUNC6(dev);
	FUNC4(priv);
	FUNC5(dev);
	priv->ops->get_eeprom_size(dev);
	priv->ops->init_adapter_variable(dev);
	FUNC1(dev);

	FUNC12(dev);

	FUNC17(&priv->watch_dog_timer, _rtl92e_watchdog_timer_cb, 0);

	FUNC17(&priv->gpio_polling_timer, rtl92e_check_rfctrl_gpio_timer,
		    0);

	FUNC13(dev);
	if (FUNC11(dev->irq, _rtl92e_irq, IRQF_SHARED, dev->name, dev)) {
		FUNC10(dev, "Error allocating IRQ %d", dev->irq);
		return -1;
	}

	priv->irq = dev->irq;
	FUNC0(COMP_INIT, "IRQ %d\n", dev->irq);

	if (FUNC7(dev) != 0) {
		FUNC10(dev, "Endopoints initialization failed");
		FUNC8(dev->irq, dev);
		return -1;
	}

	return 0;
}