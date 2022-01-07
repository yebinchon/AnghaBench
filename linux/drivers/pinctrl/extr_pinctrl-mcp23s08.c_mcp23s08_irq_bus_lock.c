
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp23s08 {int regmap; int lock; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;


 struct mcp23s08* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;
 int regcache_cache_only (int ,int) ;

__attribute__((used)) static void mcp23s08_irq_bus_lock(struct irq_data *data)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(data);
 struct mcp23s08 *mcp = gpiochip_get_data(gc);

 mutex_lock(&mcp->lock);
 regcache_cache_only(mcp->regmap, 1);
}
