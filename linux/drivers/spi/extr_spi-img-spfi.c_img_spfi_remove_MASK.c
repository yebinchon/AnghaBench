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
struct spi_master {int dummy; } ;
struct platform_device {int dummy; } ;
struct img_spfi {int /*<<< orphan*/  sys_clk; int /*<<< orphan*/  spfi_clk; int /*<<< orphan*/  dev; scalar_t__ rx_ch; scalar_t__ tx_ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct spi_master* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct img_spfi* FUNC5 (struct spi_master*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct spi_master *master = FUNC2(pdev);
	struct img_spfi *spfi = FUNC5(master);

	if (spfi->tx_ch)
		FUNC1(spfi->tx_ch);
	if (spfi->rx_ch)
		FUNC1(spfi->rx_ch);

	FUNC3(spfi->dev);
	if (!FUNC4(spfi->dev)) {
		FUNC0(spfi->spfi_clk);
		FUNC0(spfi->sys_clk);
	}

	return 0;
}