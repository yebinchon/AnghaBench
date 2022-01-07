
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp23s08 {int lock; } ;
struct gpio_chip {int dummy; } ;


 unsigned int BIT (unsigned int) ;
 int __mcp23s08_set (struct mcp23s08*,unsigned int,int) ;
 struct mcp23s08* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mcp23s08_set(struct gpio_chip *chip, unsigned offset, int value)
{
 struct mcp23s08 *mcp = gpiochip_get_data(chip);
 unsigned mask = BIT(offset);

 mutex_lock(&mcp->lock);
 __mcp23s08_set(mcp, mask, !!value);
 mutex_unlock(&mcp->lock);
}
