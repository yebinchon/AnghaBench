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
struct spi_controller {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mt7621_spi {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct spi_controller* FUNC1 (int /*<<< orphan*/ *) ; 
 struct mt7621_spi* FUNC2 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct spi_controller *master;
	struct mt7621_spi *rs;

	master = FUNC1(&pdev->dev);
	rs = FUNC2(master);

	FUNC0(rs->clk);

	return 0;
}