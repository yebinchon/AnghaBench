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
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  MCP_IODIR ; 
 int FUNC1 (struct mcp23s08*,unsigned int,int) ; 
 struct mcp23s08* FUNC2 (struct gpio_chip*) ; 
 int FUNC3 (struct mcp23s08*,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct gpio_chip *chip, unsigned offset, int value)
{
	struct mcp23s08	*mcp = FUNC2(chip);
	unsigned mask = FUNC0(offset);
	int status;

	FUNC4(&mcp->lock);
	status = FUNC1(mcp, mask, value);
	if (status == 0) {
		status = FUNC3(mcp, MCP_IODIR, mask, false);
	}
	FUNC5(&mcp->lock);
	return status;
}