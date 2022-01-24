#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int use_gpio_descriptors; int /*<<< orphan*/  num_chipselect; int /*<<< orphan*/  bus_num; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  setup; int /*<<< orphan*/  bits_per_word_mask; TYPE_1__ dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct ath79_spi_platform_data {int /*<<< orphan*/  num_chipselect; int /*<<< orphan*/  bus_num; } ;
struct TYPE_9__ {struct spi_master* master; int /*<<< orphan*/  flags; int /*<<< orphan*/ * txrx_word; int /*<<< orphan*/  chipselect; } ;
struct ath79_spi {unsigned long rrw_delay; TYPE_2__ bitbang; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 unsigned long ATH79_SPI_RRW_DELAY_FACTOR ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MHZ ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  SPI_CS_HIGH ; 
 size_t SPI_MODE_0 ; 
 int /*<<< orphan*/  ath79_spi_chipselect ; 
 int /*<<< orphan*/  FUNC4 (struct ath79_spi*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath79_spi*) ; 
 int /*<<< orphan*/  ath79_spi_txrx_mode0 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char*) ; 
 struct ath79_spi_platform_data* FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct ath79_spi*) ; 
 struct spi_master* FUNC15 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  spi_bitbang_cleanup ; 
 int /*<<< orphan*/  spi_bitbang_setup ; 
 int FUNC16 (TYPE_2__*) ; 
 struct ath79_spi* FUNC17 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC18 (struct spi_master*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct spi_master *master;
	struct ath79_spi *sp;
	struct ath79_spi_platform_data *pdata;
	unsigned long rate;
	int ret;

	master = FUNC15(&pdev->dev, sizeof(*sp));
	if (master == NULL) {
		FUNC10(&pdev->dev, "failed to allocate spi master\n");
		return -ENOMEM;
	}

	sp = FUNC17(master);
	master->dev.of_node = pdev->dev.of_node;
	FUNC14(pdev, sp);

	pdata = FUNC11(&pdev->dev);

	master->use_gpio_descriptors = true;
	master->bits_per_word_mask = FUNC3(1, 32);
	master->setup = spi_bitbang_setup;
	master->cleanup = spi_bitbang_cleanup;
	if (pdata) {
		master->bus_num = pdata->bus_num;
		master->num_chipselect = pdata->num_chipselect;
	}

	sp->bitbang.master = master;
	sp->bitbang.chipselect = ath79_spi_chipselect;
	sp->bitbang.txrx_word[SPI_MODE_0] = ath79_spi_txrx_mode0;
	sp->bitbang.flags = SPI_CS_HIGH;

	sp->base = FUNC13(pdev, 0);
	if (FUNC1(sp->base)) {
		ret = FUNC2(sp->base);
		goto err_put_master;
	}

	sp->clk = FUNC12(&pdev->dev, "ahb");
	if (FUNC1(sp->clk)) {
		ret = FUNC2(sp->clk);
		goto err_put_master;
	}

	ret = FUNC8(sp->clk);
	if (ret)
		goto err_put_master;

	rate = FUNC0(FUNC7(sp->clk), MHZ);
	if (!rate) {
		ret = -EINVAL;
		goto err_clk_disable;
	}

	sp->rrw_delay = ATH79_SPI_RRW_DELAY_FACTOR / rate;
	FUNC9(&pdev->dev, "register read/write delay is %u nsecs\n",
		sp->rrw_delay);

	FUNC5(sp);
	ret = FUNC16(&sp->bitbang);
	if (ret)
		goto err_disable;

	return 0;

err_disable:
	FUNC4(sp);
err_clk_disable:
	FUNC6(sp->clk);
err_put_master:
	FUNC18(sp->bitbang.master);

	return ret;
}