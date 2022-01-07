
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp23s08 {int lock; int regmap; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;


 struct mcp23s08* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_unlock (int *) ;
 int regcache_cache_only (int ,int) ;
 int regcache_sync (int ) ;

__attribute__((used)) static void mcp23s08_irq_bus_unlock(struct irq_data *data)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(data);
 struct mcp23s08 *mcp = gpiochip_get_data(gc);

 regcache_cache_only(mcp->regmap, 0);
 regcache_sync(mcp->regmap);

 mutex_unlock(&mcp->lock);
}
