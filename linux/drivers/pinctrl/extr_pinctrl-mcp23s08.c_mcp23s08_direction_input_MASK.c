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
struct mcp23s08 {int /*<<< orphan*/  lock; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCP_IODIR ; 
 struct mcp23s08* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (struct mcp23s08*,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned offset)
{
	struct mcp23s08	*mcp = FUNC0(chip);
	int status;

	FUNC2(&mcp->lock);
	status = FUNC1(mcp, MCP_IODIR, offset, true);
	FUNC3(&mcp->lock);

	return status;
}