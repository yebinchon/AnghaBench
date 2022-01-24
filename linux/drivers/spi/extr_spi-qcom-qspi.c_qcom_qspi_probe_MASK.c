#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int max_speed_hz; int bus_num; int mode_bits; int auto_runtime_pm; int /*<<< orphan*/  handle_err; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  prepare_message; int /*<<< orphan*/  flags; TYPE_1__ dev; int /*<<< orphan*/  num_chipselect; } ;
struct qcom_qspi {TYPE_2__* clks; int /*<<< orphan*/  base; struct device* dev; int /*<<< orphan*/  lock; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {char* id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 size_t QSPI_CLK_CORE ; 
 size_t QSPI_CLK_IFACE ; 
 int /*<<< orphan*/  QSPI_NUM_CLKS ; 
 int /*<<< orphan*/  QSPI_NUM_CS ; 
 int /*<<< orphan*/  SPI_MASTER_HALF_DUPLEX ; 
 int SPI_MODE_0 ; 
 int SPI_RX_DUAL ; 
 int SPI_RX_QUAD ; 
 int SPI_TX_DUAL ; 
 int SPI_TX_QUAD ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qcom_qspi*) ; 
 int FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  qcom_qspi_handle_err ; 
 int /*<<< orphan*/  qcom_qspi_irq ; 
 int /*<<< orphan*/  qcom_qspi_prepare_message ; 
 int /*<<< orphan*/  qcom_qspi_transfer_one ; 
 struct spi_master* FUNC11 (struct device*,int) ; 
 struct qcom_qspi* FUNC12 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC13 (struct spi_master*) ; 
 int FUNC14 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	int ret;
	struct device *dev;
	struct spi_master *master;
	struct qcom_qspi *ctrl;

	dev = &pdev->dev;

	master = FUNC11(dev, sizeof(*ctrl));
	if (!master)
		return -ENOMEM;

	FUNC8(pdev, master);

	ctrl = FUNC12(master);

	FUNC15(&ctrl->lock);
	ctrl->dev = dev;
	ctrl->base = FUNC5(pdev, 0);
	if (FUNC0(ctrl->base)) {
		ret = FUNC1(ctrl->base);
		goto exit_probe_master_put;
	}

	ctrl->clks[QSPI_CLK_CORE].id = "core";
	ctrl->clks[QSPI_CLK_IFACE].id = "iface";
	ret = FUNC4(dev, QSPI_NUM_CLKS, ctrl->clks);
	if (ret)
		goto exit_probe_master_put;

	ret = FUNC7(pdev, 0);
	if (ret < 0)
		goto exit_probe_master_put;
	ret = FUNC6(dev, ret, qcom_qspi_irq,
			IRQF_TRIGGER_HIGH, FUNC3(dev), ctrl);
	if (ret) {
		FUNC2(dev, "Failed to request irq %d\n", ret);
		goto exit_probe_master_put;
	}

	master->max_speed_hz = 300000000;
	master->num_chipselect = QSPI_NUM_CS;
	master->bus_num = -1;
	master->dev.of_node = pdev->dev.of_node;
	master->mode_bits = SPI_MODE_0 |
			    SPI_TX_DUAL | SPI_RX_DUAL |
			    SPI_TX_QUAD | SPI_RX_QUAD;
	master->flags = SPI_MASTER_HALF_DUPLEX;
	master->prepare_message = qcom_qspi_prepare_message;
	master->transfer_one = qcom_qspi_transfer_one;
	master->handle_err = qcom_qspi_handle_err;
	master->auto_runtime_pm = true;

	FUNC10(dev);

	ret = FUNC14(master);
	if (!ret)
		return 0;

	FUNC9(dev);

exit_probe_master_put:
	FUNC13(master);

	return ret;
}