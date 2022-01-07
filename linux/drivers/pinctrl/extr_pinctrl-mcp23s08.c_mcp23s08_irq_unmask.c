
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp23s08 {int dummy; } ;
struct irq_data {unsigned int hwirq; } ;
struct gpio_chip {int dummy; } ;


 int MCP_GPINTEN ;
 struct mcp23s08* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mcp_set_bit (struct mcp23s08*,int ,unsigned int,int) ;

__attribute__((used)) static void mcp23s08_irq_unmask(struct irq_data *data)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(data);
 struct mcp23s08 *mcp = gpiochip_get_data(gc);
 unsigned int pos = data->hwirq;

 mcp_set_bit(mcp, MCP_GPINTEN, pos, 1);
}
