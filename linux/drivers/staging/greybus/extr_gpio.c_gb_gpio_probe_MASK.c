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
struct irq_chip {char* name; int /*<<< orphan*/  irq_bus_sync_unlock; int /*<<< orphan*/  irq_bus_lock; int /*<<< orphan*/  irq_set_type; int /*<<< orphan*/  irq_unmask; int /*<<< orphan*/  irq_mask; } ;
struct gpio_chip {char* label; int base; int can_sleep; scalar_t__ ngpio; int /*<<< orphan*/  set_config; int /*<<< orphan*/  set; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  get_direction; int /*<<< orphan*/  free; int /*<<< orphan*/  request; int /*<<< orphan*/  owner; int /*<<< orphan*/ * parent; } ;
struct gbphy_device_id {int dummy; } ;
struct gbphy_device {int /*<<< orphan*/  dev; TYPE_1__* cport_desc; int /*<<< orphan*/  bundle; } ;
struct gb_gpio_controller {struct gb_gpio_controller* lines; scalar_t__ line_max; struct gpio_chip chip; int /*<<< orphan*/  irq_lock; struct irq_chip irqc; struct gbphy_device* gbphy_dev; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 scalar_t__ FUNC0 (struct gb_connection*) ; 
 int FUNC1 (struct gb_connection*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct gb_connection* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_connection*) ; 
 int FUNC6 (struct gb_connection*) ; 
 int FUNC7 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC8 (struct gb_connection*,struct gb_gpio_controller*) ; 
 int /*<<< orphan*/  FUNC9 (struct gbphy_device*,struct gb_gpio_controller*) ; 
 int FUNC10 (struct gb_gpio_controller*) ; 
 int /*<<< orphan*/  gb_gpio_direction_input ; 
 int /*<<< orphan*/  gb_gpio_direction_output ; 
 int /*<<< orphan*/  gb_gpio_free ; 
 int /*<<< orphan*/  gb_gpio_get ; 
 int /*<<< orphan*/  gb_gpio_get_direction ; 
 int /*<<< orphan*/  gb_gpio_irq_bus_lock ; 
 int /*<<< orphan*/  gb_gpio_irq_bus_sync_unlock ; 
 int /*<<< orphan*/  gb_gpio_irq_mask ; 
 int /*<<< orphan*/  gb_gpio_irq_set_type ; 
 int /*<<< orphan*/  gb_gpio_irq_unmask ; 
 int /*<<< orphan*/  gb_gpio_request ; 
 int /*<<< orphan*/  gb_gpio_request_handler ; 
 int /*<<< orphan*/  gb_gpio_set ; 
 int /*<<< orphan*/  gb_gpio_set_config ; 
 int /*<<< orphan*/  FUNC11 (struct gbphy_device*) ; 
 int FUNC12 (struct gpio_chip*) ; 
 int FUNC13 (struct gpio_chip*,struct irq_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct gpio_chip*) ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC15 (struct gb_gpio_controller*) ; 
 struct gb_gpio_controller* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct gbphy_device *gbphy_dev,
			 const struct gbphy_device_id *id)
{
	struct gb_connection *connection;
	struct gb_gpio_controller *ggc;
	struct gpio_chip *gpio;
	struct irq_chip *irqc;
	int ret;

	ggc = FUNC16(sizeof(*ggc), GFP_KERNEL);
	if (!ggc)
		return -ENOMEM;

	connection =
		FUNC3(gbphy_dev->bundle,
				     FUNC17(gbphy_dev->cport_desc->id),
				     gb_gpio_request_handler);
	if (FUNC0(connection)) {
		ret = FUNC1(connection);
		goto exit_ggc_free;
	}

	ggc->connection = connection;
	FUNC8(connection, ggc);
	ggc->gbphy_dev = gbphy_dev;
	FUNC9(gbphy_dev, ggc);

	ret = FUNC7(connection);
	if (ret)
		goto exit_connection_destroy;

	ret = FUNC10(ggc);
	if (ret)
		goto exit_connection_disable;

	irqc = &ggc->irqc;
	irqc->irq_mask = gb_gpio_irq_mask;
	irqc->irq_unmask = gb_gpio_irq_unmask;
	irqc->irq_set_type = gb_gpio_irq_set_type;
	irqc->irq_bus_lock = gb_gpio_irq_bus_lock;
	irqc->irq_bus_sync_unlock = gb_gpio_irq_bus_sync_unlock;
	irqc->name = "greybus_gpio";

	FUNC18(&ggc->irq_lock);

	gpio = &ggc->chip;

	gpio->label = "greybus_gpio";
	gpio->parent = &gbphy_dev->dev;
	gpio->owner = THIS_MODULE;

	gpio->request = gb_gpio_request;
	gpio->free = gb_gpio_free;
	gpio->get_direction = gb_gpio_get_direction;
	gpio->direction_input = gb_gpio_direction_input;
	gpio->direction_output = gb_gpio_direction_output;
	gpio->get = gb_gpio_get;
	gpio->set = gb_gpio_set;
	gpio->set_config = gb_gpio_set_config;
	gpio->base = -1;		/* Allocate base dynamically */
	gpio->ngpio = ggc->line_max + 1;
	gpio->can_sleep = true;

	ret = FUNC6(connection);
	if (ret)
		goto exit_line_free;

	ret = FUNC12(gpio);
	if (ret) {
		FUNC2(&gbphy_dev->dev, "failed to add gpio chip: %d\n", ret);
		goto exit_line_free;
	}

	ret = FUNC13(gpio, irqc, 0, handle_level_irq,
				   IRQ_TYPE_NONE);
	if (ret) {
		FUNC2(&gbphy_dev->dev, "failed to add irq chip: %d\n", ret);
		goto exit_gpiochip_remove;
	}

	FUNC11(gbphy_dev);
	return 0;

exit_gpiochip_remove:
	FUNC14(gpio);
exit_line_free:
	FUNC15(ggc->lines);
exit_connection_disable:
	FUNC5(connection);
exit_connection_destroy:
	FUNC4(connection);
exit_ggc_free:
	FUNC15(ggc);
	return ret;
}