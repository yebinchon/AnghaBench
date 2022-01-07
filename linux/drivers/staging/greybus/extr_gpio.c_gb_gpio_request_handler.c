
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct irq_desc {int dummy; } ;
struct gb_operation {scalar_t__ type; struct gb_message* request; struct gb_connection* connection; } ;
struct gb_message {int payload_size; struct gb_gpio_irq_event_request* payload; } ;
struct gb_gpio_irq_event_request {int which; } ;
struct TYPE_5__ {int domain; } ;
struct TYPE_6__ {TYPE_2__ irq; } ;
struct gb_gpio_controller {TYPE_3__ chip; int line_max; TYPE_1__* gbphy_dev; } ;
struct gb_connection {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 int EINVAL ;
 scalar_t__ GB_GPIO_TYPE_IRQ_EVENT ;
 int dev_err (struct device*,char*,...) ;
 struct gb_gpio_controller* gb_connection_get_data (struct gb_connection*) ;
 int generic_handle_irq_desc (struct irq_desc*) ;
 int irq_find_mapping (int ,int ) ;
 struct irq_desc* irq_to_desc (int) ;
 int local_irq_disable () ;
 int local_irq_enable () ;

__attribute__((used)) static int gb_gpio_request_handler(struct gb_operation *op)
{
 struct gb_connection *connection = op->connection;
 struct gb_gpio_controller *ggc = gb_connection_get_data(connection);
 struct device *dev = &ggc->gbphy_dev->dev;
 struct gb_message *request;
 struct gb_gpio_irq_event_request *event;
 u8 type = op->type;
 int irq;
 struct irq_desc *desc;

 if (type != GB_GPIO_TYPE_IRQ_EVENT) {
  dev_err(dev, "unsupported unsolicited request: %u\n", type);
  return -EINVAL;
 }

 request = op->request;

 if (request->payload_size < sizeof(*event)) {
  dev_err(dev, "short event received (%zu < %zu)\n",
   request->payload_size, sizeof(*event));
  return -EINVAL;
 }

 event = request->payload;
 if (event->which > ggc->line_max) {
  dev_err(dev, "invalid hw irq: %d\n", event->which);
  return -EINVAL;
 }

 irq = irq_find_mapping(ggc->chip.irq.domain, event->which);
 if (!irq) {
  dev_err(dev, "failed to find IRQ\n");
  return -EINVAL;
 }
 desc = irq_to_desc(irq);
 if (!desc) {
  dev_err(dev, "failed to look up irq\n");
  return -EINVAL;
 }

 local_irq_disable();
 generic_handle_irq_desc(desc);
 local_irq_enable();

 return 0;
}
