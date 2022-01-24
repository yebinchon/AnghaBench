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
struct cedrus_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  ahb_clk; int /*<<< orphan*/  mod_clk; int /*<<< orphan*/  ram_clk; int /*<<< orphan*/  rstc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct cedrus_dev *dev)
{
	FUNC2(dev->rstc);

	FUNC0(dev->ram_clk);
	FUNC0(dev->mod_clk);
	FUNC0(dev->ahb_clk);

	FUNC3(dev->dev);

	FUNC1(dev->dev);
}