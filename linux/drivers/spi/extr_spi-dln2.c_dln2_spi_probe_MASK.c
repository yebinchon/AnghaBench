#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int bus_num; int mode_bits; int auto_runtime_pm; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  prepare_message; int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  max_speed_hz; int /*<<< orphan*/  min_speed_hz; int /*<<< orphan*/  num_chipselect; TYPE_1__ dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct dln2_spi {int cs; int mode; int /*<<< orphan*/  port; struct platform_device* pdev; struct spi_master* master; int /*<<< orphan*/  buf; } ;
struct dln2_platform_data {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLN2_RPM_AUTOSUSPEND_TIMEOUT ; 
 int /*<<< orphan*/  DLN2_SPI_BUF_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct dln2_platform_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,struct spi_master*) ; 
 int FUNC4 (struct dln2_spi*,int) ; 
 int FUNC5 (struct dln2_spi*,int) ; 
 int FUNC6 (struct dln2_spi*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct dln2_spi*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct dln2_spi*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dln2_spi_prepare_message ; 
 int /*<<< orphan*/  dln2_spi_transfer_one ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 struct spi_master* FUNC16 (struct device*,int) ; 
 struct dln2_spi* FUNC17 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC18 (struct spi_master*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct spi_master *master;
	struct dln2_spi *dln2;
	struct dln2_platform_data *pdata = FUNC1(&pdev->dev);
	struct device *dev = &pdev->dev;
	int ret;

	master = FUNC16(&pdev->dev, sizeof(*dln2));
	if (!master)
		return -ENOMEM;

	FUNC9(pdev, master);

	dln2 = FUNC17(master);

	dln2->buf = FUNC2(&pdev->dev, DLN2_SPI_BUF_SIZE, GFP_KERNEL);
	if (!dln2->buf) {
		ret = -ENOMEM;
		goto exit_free_master;
	}

	dln2->master = master;
	dln2->master->dev.of_node = dev->of_node;
	dln2->pdev = pdev;
	dln2->port = pdata->port;
	/* cs/mode can never be 0xff, so the first transfer will set them */
	dln2->cs = 0xff;
	dln2->mode = 0xff;

	/* disable SPI module before continuing with the setup */
	ret = FUNC5(dln2, false);
	if (ret < 0) {
		FUNC0(&pdev->dev, "Failed to disable SPI module\n");
		goto exit_free_master;
	}

	ret = FUNC6(dln2, &master->num_chipselect);
	if (ret < 0) {
		FUNC0(&pdev->dev, "Failed to get number of CS pins\n");
		goto exit_free_master;
	}

	ret = FUNC7(dln2,
				       &master->min_speed_hz,
				       &master->max_speed_hz);
	if (ret < 0) {
		FUNC0(&pdev->dev, "Failed to read bus min/max freqs\n");
		goto exit_free_master;
	}

	ret = FUNC8(dln2,
						 &master->bits_per_word_mask);
	if (ret < 0) {
		FUNC0(&pdev->dev, "Failed to read supported frame sizes\n");
		goto exit_free_master;
	}

	ret = FUNC4(dln2, true);
	if (ret < 0) {
		FUNC0(&pdev->dev, "Failed to enable CS pins\n");
		goto exit_free_master;
	}

	master->bus_num = -1;
	master->mode_bits = SPI_CPOL | SPI_CPHA;
	master->prepare_message = dln2_spi_prepare_message;
	master->transfer_one = dln2_spi_transfer_one;
	master->auto_runtime_pm = true;

	/* enable SPI module, we're good to go */
	ret = FUNC5(dln2, true);
	if (ret < 0) {
		FUNC0(&pdev->dev, "Failed to enable SPI module\n");
		goto exit_free_master;
	}

	FUNC13(&pdev->dev,
					 DLN2_RPM_AUTOSUSPEND_TIMEOUT);
	FUNC15(&pdev->dev);
	FUNC12(&pdev->dev);
	FUNC11(&pdev->dev);

	ret = FUNC3(&pdev->dev, master);
	if (ret < 0) {
		FUNC0(&pdev->dev, "Failed to register master\n");
		goto exit_register;
	}

	return ret;

exit_register:
	FUNC10(&pdev->dev);
	FUNC14(&pdev->dev);

	if (FUNC5(dln2, false) < 0)
		FUNC0(&pdev->dev, "Failed to disable SPI module\n");
exit_free_master:
	FUNC18(master);

	return ret;
}