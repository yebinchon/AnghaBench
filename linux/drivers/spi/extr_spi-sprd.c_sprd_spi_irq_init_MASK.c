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
struct sprd_spi {scalar_t__ irq; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sprd_spi*) ; 
 scalar_t__ FUNC2 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sprd_spi_handle_irq ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev, struct sprd_spi *ss)
{
	int ret;

	ss->irq = FUNC2(pdev, 0);
	if (ss->irq < 0)
		return ss->irq;

	ret = FUNC1(&pdev->dev, ss->irq, sprd_spi_handle_irq,
				0, pdev->name, ss);
	if (ret)
		FUNC0(&pdev->dev, "failed to request spi irq %d, ret = %d\n",
			ss->irq, ret);

	return ret;
}