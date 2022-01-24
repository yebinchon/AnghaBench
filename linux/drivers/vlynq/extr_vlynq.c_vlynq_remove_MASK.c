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
struct vlynq_device {scalar_t__ regs_start; scalar_t__ regs_end; int /*<<< orphan*/  local; int /*<<< orphan*/  dev; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vlynq_device*) ; 
 struct vlynq_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct vlynq_device *dev = FUNC3(pdev);

	FUNC0(&dev->dev);
	FUNC1(dev->local);
	FUNC4(dev->regs_start,
			   dev->regs_end - dev->regs_start + 1);

	FUNC2(dev);

	return 0;
}