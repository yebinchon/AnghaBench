#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct trf7970a {int /*<<< orphan*/  lock; void* regulator; int /*<<< orphan*/  ddev; TYPE_1__* dev; int /*<<< orphan*/  io_ctrl; int /*<<< orphan*/  chip_status_ctrl; int /*<<< orphan*/  timeout_work; scalar_t__ modulator_sys_clk_ctrl; int /*<<< orphan*/  quirks; void* en2_gpiod; void* en_gpiod; struct spi_device* spi; int /*<<< orphan*/  state; } ;
struct TYPE_12__ {struct device_node* of_node; } ;
struct spi_device {int bits_per_word; TYPE_1__ dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  mode; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC1 (void*) ; 
 int NFC_DIGITAL_DRV_CAPS_IN_CRC ; 
 int NFC_DIGITAL_DRV_CAPS_TG_CRC ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  SPI_MODE_1 ; 
 scalar_t__ TRF7970A_13MHZ_CLOCK_FREQUENCY ; 
 scalar_t__ TRF7970A_27MHZ_CLOCK_FREQUENCY ; 
 int /*<<< orphan*/  TRF7970A_CHIP_STATUS_VRS5_3 ; 
 scalar_t__ TRF7970A_MODULATOR_27MHZ ; 
 int /*<<< orphan*/  TRF7970A_QUIRK_EN2_MUST_STAY_LOW ; 
 int /*<<< orphan*/  TRF7970A_QUIRK_IRQ_STATUS_READ ; 
 int /*<<< orphan*/  TRF7970A_REG_IO_CTRL_IO_LOW ; 
 int /*<<< orphan*/  TRF7970A_ST_PWR_OFF ; 
 int /*<<< orphan*/  TRF7970A_SUPPORTED_PROTOCOLS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 void* FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (TYPE_1__*,char*,int,int /*<<< orphan*/ ) ; 
 struct trf7970a* FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC9 (TYPE_1__*,char*) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct trf7970a*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct trf7970a*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC18 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct device_node*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (void*) ; 
 int FUNC23 (void*) ; 
 int FUNC24 (void*) ; 
 int /*<<< orphan*/  FUNC25 (struct spi_device*,struct trf7970a*) ; 
 int FUNC26 (struct spi_device*) ; 
 int FUNC27 (struct device_node*) ; 
 int /*<<< orphan*/  trf7970a_irq ; 
 int /*<<< orphan*/  trf7970a_nfc_ops ; 
 int /*<<< orphan*/  FUNC28 (struct trf7970a*) ; 
 int FUNC29 (struct trf7970a*) ; 
 int /*<<< orphan*/  trf7970a_timeout_work_handler ; 

__attribute__((used)) static int FUNC30(struct spi_device *spi)
{
	struct device_node *np = spi->dev.of_node;
	struct trf7970a *trf;
	int uvolts, autosuspend_delay, ret;
	u32 clk_freq = TRF7970A_13MHZ_CLOCK_FREQUENCY;

	if (!np) {
		FUNC4(&spi->dev, "No Device Tree entry\n");
		return -EINVAL;
	}

	trf = FUNC8(&spi->dev, sizeof(*trf), GFP_KERNEL);
	if (!trf)
		return -ENOMEM;

	trf->state = TRF7970A_ST_PWR_OFF;
	trf->dev = &spi->dev;
	trf->spi = spi;

	spi->mode = SPI_MODE_1;
	spi->bits_per_word = 8;

	ret = FUNC26(spi);
	if (ret < 0) {
		FUNC4(trf->dev, "Can't set up SPI Communication\n");
		return ret;
	}

	if (FUNC18(np, "irq-status-read-quirk"))
		trf->quirks |= TRF7970A_QUIRK_IRQ_STATUS_READ;

	/* There are two enable pins - only EN must be present in the DT */
	trf->en_gpiod = FUNC6(trf->dev, "ti,enable", 0,
					     GPIOD_OUT_LOW);
	if (FUNC1(trf->en_gpiod)) {
		FUNC4(trf->dev, "No EN GPIO property\n");
		return FUNC2(trf->en_gpiod);
	}

	trf->en2_gpiod = FUNC7(trf->dev, "ti,enable", 1,
						       GPIOD_OUT_LOW);
	if (!trf->en2_gpiod) {
		FUNC5(trf->dev, "No EN2 GPIO property\n");
	} else if (FUNC1(trf->en2_gpiod)) {
		FUNC4(trf->dev, "Error getting EN2 GPIO property: %ld\n",
			FUNC2(trf->en2_gpiod));
		return FUNC2(trf->en2_gpiod);
	} else if (FUNC18(np, "en2-rf-quirk")) {
		trf->quirks |= TRF7970A_QUIRK_EN2_MUST_STAY_LOW;
	}

	FUNC19(np, "clock-frequency", &clk_freq);
	if ((clk_freq != TRF7970A_27MHZ_CLOCK_FREQUENCY) &&
	    (clk_freq != TRF7970A_13MHZ_CLOCK_FREQUENCY)) {
		FUNC4(trf->dev,
			"clock-frequency (%u Hz) unsupported\n", clk_freq);
		return -EINVAL;
	}

	if (clk_freq == TRF7970A_27MHZ_CLOCK_FREQUENCY) {
		trf->modulator_sys_clk_ctrl = TRF7970A_MODULATOR_27MHZ;
		FUNC3(trf->dev, "trf7970a configured for 27MHz crystal\n");
	} else {
		trf->modulator_sys_clk_ctrl = 0;
	}

	ret = FUNC10(trf->dev, spi->irq, NULL,
					trf7970a_irq,
					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
					"trf7970a", trf);
	if (ret) {
		FUNC4(trf->dev, "Can't request IRQ#%d: %d\n", spi->irq, ret);
		return ret;
	}

	FUNC12(&trf->lock);
	FUNC0(&trf->timeout_work, trf7970a_timeout_work_handler);

	trf->regulator = FUNC9(&spi->dev, "vin");
	if (FUNC1(trf->regulator)) {
		ret = FUNC2(trf->regulator);
		FUNC4(trf->dev, "Can't get VIN regulator: %d\n", ret);
		goto err_destroy_lock;
	}

	ret = FUNC23(trf->regulator);
	if (ret) {
		FUNC4(trf->dev, "Can't enable VIN: %d\n", ret);
		goto err_destroy_lock;
	}

	uvolts = FUNC24(trf->regulator);
	if (uvolts > 4000000)
		trf->chip_status_ctrl = TRF7970A_CHIP_STATUS_VRS5_3;

	trf->regulator = FUNC9(&spi->dev, "vdd-io");
	if (FUNC1(trf->regulator)) {
		ret = FUNC2(trf->regulator);
		FUNC4(trf->dev, "Can't get VDD_IO regulator: %d\n", ret);
		goto err_destroy_lock;
	}

	ret = FUNC23(trf->regulator);
	if (ret) {
		FUNC4(trf->dev, "Can't enable VDD_IO: %d\n", ret);
		goto err_destroy_lock;
	}

	if (FUNC24(trf->regulator) == 1800000) {
		trf->io_ctrl = TRF7970A_REG_IO_CTRL_IO_LOW;
		FUNC3(trf->dev, "trf7970a config vdd_io to 1.8V\n");
	}

	trf->ddev = FUNC13(&trf7970a_nfc_ops,
						TRF7970A_SUPPORTED_PROTOCOLS,
						NFC_DIGITAL_DRV_CAPS_IN_CRC |
						NFC_DIGITAL_DRV_CAPS_TG_CRC, 0,
						0);
	if (!trf->ddev) {
		FUNC4(trf->dev, "Can't allocate NFC digital device\n");
		ret = -ENOMEM;
		goto err_disable_regulator;
	}

	FUNC17(trf->ddev, trf->dev);
	FUNC16(trf->ddev, trf);
	FUNC25(spi, trf);

	autosuspend_delay = FUNC27(np);

	FUNC20(trf->dev, autosuspend_delay);
	FUNC21(trf->dev);

	ret = FUNC29(trf);
	if (ret)
		goto err_free_ddev;

	ret = FUNC15(trf->ddev);
	if (ret) {
		FUNC4(trf->dev, "Can't register NFC digital device: %d\n",
			ret);
		goto err_shutdown;
	}

	return 0;

err_shutdown:
	FUNC28(trf);
err_free_ddev:
	FUNC14(trf->ddev);
err_disable_regulator:
	FUNC22(trf->regulator);
err_destroy_lock:
	FUNC11(&trf->lock);
	return ret;
}