
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp23s08 {int lock; } ;
struct gpio_chip {int dummy; } ;


 int MCP_IODIR ;
 struct mcp23s08* gpiochip_get_data (struct gpio_chip*) ;
 int mcp_set_bit (struct mcp23s08*,int ,unsigned int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mcp23s08_direction_input(struct gpio_chip *chip, unsigned offset)
{
 struct mcp23s08 *mcp = gpiochip_get_data(chip);
 int status;

 mutex_lock(&mcp->lock);
 status = mcp_set_bit(mcp, MCP_IODIR, offset, 1);
 mutex_unlock(&mcp->lock);

 return status;
}
