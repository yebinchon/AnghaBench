#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mcp23s08 {int dummy; } ;
struct irq_data {unsigned int hwirq; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCP_GPINTEN ; 
 struct mcp23s08* FUNC0 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct mcp23s08*,int /*<<< orphan*/ ,unsigned int,int) ; 

__attribute__((used)) static void FUNC3(struct irq_data *data)
{
	struct gpio_chip *gc = FUNC1(data);
	struct mcp23s08 *mcp = FUNC0(gc);
	unsigned int pos = data->hwirq;

	FUNC2(mcp, MCP_GPINTEN, pos, true);
}