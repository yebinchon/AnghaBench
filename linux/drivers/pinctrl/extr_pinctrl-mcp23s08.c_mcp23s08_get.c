
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp23s08 {int cached_gpio; int lock; } ;
struct gpio_chip {int dummy; } ;


 int MCP_GPIO ;
 struct mcp23s08* gpiochip_get_data (struct gpio_chip*) ;
 int mcp_read (struct mcp23s08*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mcp23s08_get(struct gpio_chip *chip, unsigned offset)
{
 struct mcp23s08 *mcp = gpiochip_get_data(chip);
 int status, ret;

 mutex_lock(&mcp->lock);


 ret = mcp_read(mcp, MCP_GPIO, &status);
 if (ret < 0)
  status = 0;
 else {
  mcp->cached_gpio = status;
  status = !!(status & (1 << offset));
 }

 mutex_unlock(&mcp->lock);
 return status;
}
