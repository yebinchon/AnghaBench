#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct irq_desc {int dummy; } ;
struct gb_operation {scalar_t__ type; struct gb_message* request; struct gb_connection* connection; } ;
struct gb_message {int payload_size; struct gb_gpio_irq_event_request* payload; } ;
struct gb_gpio_irq_event_request {int /*<<< orphan*/  which; } ;
struct TYPE_5__ {int /*<<< orphan*/  domain; } ;
struct TYPE_6__ {TYPE_2__ irq; } ;
struct gb_gpio_controller {TYPE_3__ chip; int /*<<< orphan*/  line_max; TYPE_1__* gbphy_dev; } ;
struct gb_connection {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ GB_GPIO_TYPE_IRQ_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 struct gb_gpio_controller* FUNC1 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_desc*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct irq_desc* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct gb_operation *op)
{
	struct gb_connection *connection = op->connection;
	struct gb_gpio_controller *ggc = FUNC1(connection);
	struct device *dev = &ggc->gbphy_dev->dev;
	struct gb_message *request;
	struct gb_gpio_irq_event_request *event;
	u8 type = op->type;
	int irq;
	struct irq_desc *desc;

	if (type != GB_GPIO_TYPE_IRQ_EVENT) {
		FUNC0(dev, "unsupported unsolicited request: %u\n", type);
		return -EINVAL;
	}

	request = op->request;

	if (request->payload_size < sizeof(*event)) {
		FUNC0(dev, "short event received (%zu < %zu)\n",
			request->payload_size, sizeof(*event));
		return -EINVAL;
	}

	event = request->payload;
	if (event->which > ggc->line_max) {
		FUNC0(dev, "invalid hw irq: %d\n", event->which);
		return -EINVAL;
	}

	irq = FUNC3(ggc->chip.irq.domain, event->which);
	if (!irq) {
		FUNC0(dev, "failed to find IRQ\n");
		return -EINVAL;
	}
	desc = FUNC4(irq);
	if (!desc) {
		FUNC0(dev, "failed to look up irq\n");
		return -EINVAL;
	}

	FUNC5();
	FUNC2(desc);
	FUNC6();

	return 0;
}