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
struct spi_qup {int /*<<< orphan*/  iclk; int /*<<< orphan*/  cclk; } ;
struct spi_master {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUP_STATE_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct spi_qup* FUNC5 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_master*) ; 
 int FUNC7 (struct spi_qup*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct spi_master *master = FUNC1(&pdev->dev);
	struct spi_qup *controller = FUNC5(master);
	int ret;

	ret = FUNC3(&pdev->dev);
	if (ret < 0)
		return ret;

	ret = FUNC7(controller, QUP_STATE_RESET);
	if (ret)
		return ret;

	FUNC6(master);

	FUNC0(controller->cclk);
	FUNC0(controller->iclk);

	FUNC4(&pdev->dev);
	FUNC2(&pdev->dev);

	return 0;
}