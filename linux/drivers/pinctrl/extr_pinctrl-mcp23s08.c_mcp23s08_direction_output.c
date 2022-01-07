
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp23s08 {int lock; } ;
struct gpio_chip {int dummy; } ;


 unsigned int BIT (unsigned int) ;
 int MCP_IODIR ;
 int __mcp23s08_set (struct mcp23s08*,unsigned int,int) ;
 struct mcp23s08* gpiochip_get_data (struct gpio_chip*) ;
 int mcp_set_mask (struct mcp23s08*,int ,unsigned int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
mcp23s08_direction_output(struct gpio_chip *chip, unsigned offset, int value)
{
 struct mcp23s08 *mcp = gpiochip_get_data(chip);
 unsigned mask = BIT(offset);
 int status;

 mutex_lock(&mcp->lock);
 status = __mcp23s08_set(mcp, mask, value);
 if (status == 0) {
  status = mcp_set_mask(mcp, MCP_IODIR, mask, 0);
 }
 mutex_unlock(&mcp->lock);
 return status;
}
