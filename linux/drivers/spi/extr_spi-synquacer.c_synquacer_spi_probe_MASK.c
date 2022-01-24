#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct synquacer_spi {void* clk; TYPE_2__* dev; int /*<<< orphan*/  tx_irq_name; int /*<<< orphan*/  rx_irq_name; void* rtm; void* aces; void* clk_src_type; void* regs; int /*<<< orphan*/  transfer_done; } ;
struct TYPE_15__ {int /*<<< orphan*/  fwnode; struct device_node* of_node; } ;
struct spi_master {int max_speed_hz; int min_speed_hz; int auto_runtime_pm; int mode_bits; int bits_per_word_mask; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  set_cs; int /*<<< orphan*/  bus_num; TYPE_1__ dev; int /*<<< orphan*/  num_chipselect; } ;
struct TYPE_16__ {int /*<<< orphan*/  fwnode; struct device_node* of_node; } ;
struct platform_device {int /*<<< orphan*/  id; TYPE_2__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_RX_DUAL ; 
 int SPI_RX_QUAD ; 
 int SPI_TX_DUAL ; 
 int SPI_TX_QUAD ; 
 void* SYNQUACER_HSSPI_CLOCK_SRC_IHCLK ; 
 void* SYNQUACER_HSSPI_CLOCK_SRC_IPCLK ; 
 int /*<<< orphan*/  SYNQUACER_HSSPI_IRQ_NAME_MAX ; 
 int /*<<< orphan*/  SYNQUACER_HSSPI_NUM_CHIP_SELECT ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,...) ; 
 char* FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,char*,char*) ; 
 void* FUNC10 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*,int*) ; 
 void* FUNC12 (TYPE_2__*,char*) ; 
 void* FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct synquacer_spi*) ; 
 int FUNC15 (TYPE_2__*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct spi_master* FUNC23 (TYPE_2__*,int) ; 
 struct synquacer_spi* FUNC24 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC25 (struct spi_master*) ; 
 int /*<<< orphan*/  sq_spi_rx_handler ; 
 int /*<<< orphan*/  sq_spi_tx_handler ; 
 int FUNC26 (struct spi_master*) ; 
 int /*<<< orphan*/  synquacer_spi_set_cs ; 
 int /*<<< orphan*/  synquacer_spi_transfer_one ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct spi_master *master;
	struct synquacer_spi *sspi;
	int ret;
	int rx_irq, tx_irq;

	master = FUNC23(&pdev->dev, sizeof(*sspi));
	if (!master)
		return -ENOMEM;

	FUNC18(pdev, master);

	sspi = FUNC24(master);
	sspi->dev = &pdev->dev;

	FUNC16(&sspi->transfer_done);

	sspi->regs = FUNC13(pdev, 0);
	if (FUNC0(sspi->regs)) {
		ret = FUNC1(sspi->regs);
		goto put_spi;
	}

	sspi->clk_src_type = SYNQUACER_HSSPI_CLOCK_SRC_IHCLK; /* Default */
	FUNC11(&pdev->dev, "socionext,ihclk-rate",
				 &master->max_speed_hz); /* for ACPI */

	if (FUNC8(&pdev->dev)) {
		if (FUNC9(&pdev->dev,
					 "clock-names", "iHCLK") >= 0) {
			sspi->clk_src_type = SYNQUACER_HSSPI_CLOCK_SRC_IHCLK;
			sspi->clk = FUNC12(sspi->dev, "iHCLK");
		} else if (FUNC9(&pdev->dev,
						"clock-names", "iPCLK") >= 0) {
			sspi->clk_src_type = SYNQUACER_HSSPI_CLOCK_SRC_IPCLK;
			sspi->clk = FUNC12(sspi->dev, "iPCLK");
		} else {
			FUNC6(&pdev->dev, "specified wrong clock source\n");
			ret = -EINVAL;
			goto put_spi;
		}

		if (FUNC0(sspi->clk)) {
			if (!(FUNC1(sspi->clk) == -EPROBE_DEFER))
				FUNC6(&pdev->dev, "clock not found\n");
			ret = FUNC1(sspi->clk);
			goto put_spi;
		}

		ret = FUNC5(sspi->clk);
		if (ret) {
			FUNC6(&pdev->dev, "failed to enable clock (%d)\n",
				ret);
			goto put_spi;
		}

		master->max_speed_hz = FUNC4(sspi->clk);
	}

	if (!master->max_speed_hz) {
		FUNC6(&pdev->dev, "missing clock source\n");
		return -EINVAL;
	}
	master->min_speed_hz = master->max_speed_hz / 254;

	sspi->aces = FUNC10(&pdev->dev,
					       "socionext,set-aces");
	sspi->rtm = FUNC10(&pdev->dev, "socionext,use-rtm");

	master->num_chipselect = SYNQUACER_HSSPI_NUM_CHIP_SELECT;

	rx_irq = FUNC17(pdev, 0);
	if (rx_irq <= 0) {
		ret = rx_irq;
		goto put_spi;
	}
	FUNC22(sspi->rx_irq_name, SYNQUACER_HSSPI_IRQ_NAME_MAX, "%s-rx",
		 FUNC7(&pdev->dev));
	ret = FUNC14(&pdev->dev, rx_irq, sq_spi_rx_handler,
				0, sspi->rx_irq_name, sspi);
	if (ret) {
		FUNC6(&pdev->dev, "request rx_irq failed (%d)\n", ret);
		goto put_spi;
	}

	tx_irq = FUNC17(pdev, 1);
	if (tx_irq <= 0) {
		ret = tx_irq;
		goto put_spi;
	}
	FUNC22(sspi->tx_irq_name, SYNQUACER_HSSPI_IRQ_NAME_MAX, "%s-tx",
		 FUNC7(&pdev->dev));
	ret = FUNC14(&pdev->dev, tx_irq, sq_spi_tx_handler,
				0, sspi->tx_irq_name, sspi);
	if (ret) {
		FUNC6(&pdev->dev, "request tx_irq failed (%d)\n", ret);
		goto put_spi;
	}

	master->dev.of_node = np;
	master->dev.fwnode = pdev->dev.fwnode;
	master->auto_runtime_pm = true;
	master->bus_num = pdev->id;

	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_TX_DUAL | SPI_RX_DUAL |
			    SPI_TX_QUAD | SPI_RX_QUAD;
	master->bits_per_word_mask = FUNC2(32) | FUNC2(24) |
				     FUNC2(16) | FUNC2(8);

	master->set_cs = synquacer_spi_set_cs;
	master->transfer_one = synquacer_spi_transfer_one;

	ret = FUNC26(master);
	if (ret)
		goto fail_enable;

	FUNC21(sspi->dev);
	FUNC20(sspi->dev);

	ret = FUNC15(sspi->dev, master);
	if (ret)
		goto disable_pm;

	return 0;

disable_pm:
	FUNC19(sspi->dev);
fail_enable:
	FUNC3(sspi->clk);
put_spi:
	FUNC25(master);

	return ret;
}