
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_chip {char* name; int irq_bus_sync_unlock; int irq_bus_lock; int irq_set_type; int irq_unmask; int irq_mask; } ;
struct gpio_chip {char* label; int base; int can_sleep; scalar_t__ ngpio; int set_config; int set; int get; int direction_output; int direction_input; int get_direction; int free; int request; int owner; int * parent; } ;
struct gbphy_device_id {int dummy; } ;
struct gbphy_device {int dev; TYPE_1__* cport_desc; int bundle; } ;
struct gb_gpio_controller {struct gb_gpio_controller* lines; scalar_t__ line_max; struct gpio_chip chip; int irq_lock; struct irq_chip irqc; struct gbphy_device* gbphy_dev; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {int id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQ_TYPE_NONE ;
 scalar_t__ IS_ERR (struct gb_connection*) ;
 int PTR_ERR (struct gb_connection*) ;
 int THIS_MODULE ;
 int dev_err (int *,char*,int) ;
 struct gb_connection* gb_connection_create (int ,int ,int ) ;
 int gb_connection_destroy (struct gb_connection*) ;
 int gb_connection_disable (struct gb_connection*) ;
 int gb_connection_enable (struct gb_connection*) ;
 int gb_connection_enable_tx (struct gb_connection*) ;
 int gb_connection_set_data (struct gb_connection*,struct gb_gpio_controller*) ;
 int gb_gbphy_set_data (struct gbphy_device*,struct gb_gpio_controller*) ;
 int gb_gpio_controller_setup (struct gb_gpio_controller*) ;
 int gb_gpio_direction_input ;
 int gb_gpio_direction_output ;
 int gb_gpio_free ;
 int gb_gpio_get ;
 int gb_gpio_get_direction ;
 int gb_gpio_irq_bus_lock ;
 int gb_gpio_irq_bus_sync_unlock ;
 int gb_gpio_irq_mask ;
 int gb_gpio_irq_set_type ;
 int gb_gpio_irq_unmask ;
 int gb_gpio_request ;
 int gb_gpio_request_handler ;
 int gb_gpio_set ;
 int gb_gpio_set_config ;
 int gbphy_runtime_put_autosuspend (struct gbphy_device*) ;
 int gpiochip_add (struct gpio_chip*) ;
 int gpiochip_irqchip_add (struct gpio_chip*,struct irq_chip*,int ,int ,int ) ;
 int gpiochip_remove (struct gpio_chip*) ;
 int handle_level_irq ;
 int kfree (struct gb_gpio_controller*) ;
 struct gb_gpio_controller* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int gb_gpio_probe(struct gbphy_device *gbphy_dev,
    const struct gbphy_device_id *id)
{
 struct gb_connection *connection;
 struct gb_gpio_controller *ggc;
 struct gpio_chip *gpio;
 struct irq_chip *irqc;
 int ret;

 ggc = kzalloc(sizeof(*ggc), GFP_KERNEL);
 if (!ggc)
  return -ENOMEM;

 connection =
  gb_connection_create(gbphy_dev->bundle,
         le16_to_cpu(gbphy_dev->cport_desc->id),
         gb_gpio_request_handler);
 if (IS_ERR(connection)) {
  ret = PTR_ERR(connection);
  goto exit_ggc_free;
 }

 ggc->connection = connection;
 gb_connection_set_data(connection, ggc);
 ggc->gbphy_dev = gbphy_dev;
 gb_gbphy_set_data(gbphy_dev, ggc);

 ret = gb_connection_enable_tx(connection);
 if (ret)
  goto exit_connection_destroy;

 ret = gb_gpio_controller_setup(ggc);
 if (ret)
  goto exit_connection_disable;

 irqc = &ggc->irqc;
 irqc->irq_mask = gb_gpio_irq_mask;
 irqc->irq_unmask = gb_gpio_irq_unmask;
 irqc->irq_set_type = gb_gpio_irq_set_type;
 irqc->irq_bus_lock = gb_gpio_irq_bus_lock;
 irqc->irq_bus_sync_unlock = gb_gpio_irq_bus_sync_unlock;
 irqc->name = "greybus_gpio";

 mutex_init(&ggc->irq_lock);

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
 gpio->base = -1;
 gpio->ngpio = ggc->line_max + 1;
 gpio->can_sleep = 1;

 ret = gb_connection_enable(connection);
 if (ret)
  goto exit_line_free;

 ret = gpiochip_add(gpio);
 if (ret) {
  dev_err(&gbphy_dev->dev, "failed to add gpio chip: %d\n", ret);
  goto exit_line_free;
 }

 ret = gpiochip_irqchip_add(gpio, irqc, 0, handle_level_irq,
       IRQ_TYPE_NONE);
 if (ret) {
  dev_err(&gbphy_dev->dev, "failed to add irq chip: %d\n", ret);
  goto exit_gpiochip_remove;
 }

 gbphy_runtime_put_autosuspend(gbphy_dev);
 return 0;

exit_gpiochip_remove:
 gpiochip_remove(gpio);
exit_line_free:
 kfree(ggc->lines);
exit_connection_disable:
 gb_connection_disable(connection);
exit_connection_destroy:
 gb_connection_destroy(connection);
exit_ggc_free:
 kfree(ggc);
 return ret;
}
