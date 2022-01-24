#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int mode; int bits_per_word; int irq; int /*<<< orphan*/  dev; } ;
struct regmap_config {int reg_bits; int val_bits; int write_flag_mask; } ;
struct nvmem_config {char* name; int word_size; int stride; struct ds1343_priv* priv; int /*<<< orphan*/  reg_write; int /*<<< orphan*/  reg_read; int /*<<< orphan*/  size; } ;
struct ds1343_priv {int irq; TYPE_1__* rtc; TYPE_1__* map; int /*<<< orphan*/  mutex; struct spi_device* spi; } ;
struct TYPE_9__ {int nvram_old_abi; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 unsigned int DS1343_A0IE ; 
 unsigned int DS1343_A1IE ; 
 int /*<<< orphan*/  DS1343_CONTROL_REG ; 
 unsigned int DS1343_EOSC ; 
 unsigned int DS1343_INTCN ; 
 unsigned int DS1343_IRQF0 ; 
 unsigned int DS1343_IRQF1 ; 
 int /*<<< orphan*/  DS1343_NVRAM_LEN ; 
 unsigned int DS1343_OSF ; 
 int /*<<< orphan*/  DS1343_SECONDS_REG ; 
 int /*<<< orphan*/  DS1343_STATUS_REG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int SPI_CS_HIGH ; 
 int SPI_MODE_3 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct ds1343_priv* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (struct spi_device*,struct regmap_config*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ds1343_priv*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ds1343_nvram_read ; 
 int /*<<< orphan*/  ds1343_nvram_write ; 
 int /*<<< orphan*/  ds1343_rtc_ops ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ds1343_thread ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,struct nvmem_config*) ; 
 int FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (struct spi_device*,struct ds1343_priv*) ; 
 int FUNC16 (struct spi_device*) ; 

__attribute__((used)) static int FUNC17(struct spi_device *spi)
{
	struct ds1343_priv *priv;
	struct regmap_config config = { .reg_bits = 8, .val_bits = 8,
					.write_flag_mask = 0x80, };
	unsigned int data;
	int res;
	struct nvmem_config nvmem_cfg = {
		.name = "ds1343-",
		.word_size = 1,
		.stride = 1,
		.size = DS1343_NVRAM_LEN,
		.reg_read = ds1343_nvram_read,
		.reg_write = ds1343_nvram_write,
	};

	priv = FUNC5(&spi->dev, sizeof(struct ds1343_priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->spi = spi;
	FUNC10(&priv->mutex);

	/* RTC DS1347 works in spi mode 3 and
	 * its chip select is active high
	 */
	spi->mode = SPI_MODE_3 | SPI_CS_HIGH;
	spi->bits_per_word = 8;
	res = FUNC16(spi);
	if (res)
		return res;

	FUNC15(spi, priv);

	priv->map = FUNC6(spi, &config);

	if (FUNC0(priv->map)) {
		FUNC2(&spi->dev, "spi regmap init failed for rtc ds1343\n");
		return FUNC1(priv->map);
	}

	res = FUNC11(priv->map, DS1343_SECONDS_REG, &data);
	if (res)
		return res;

	FUNC11(priv->map, DS1343_CONTROL_REG, &data);
	data |= DS1343_INTCN;
	data &= ~(DS1343_EOSC | DS1343_A1IE | DS1343_A0IE);
	FUNC12(priv->map, DS1343_CONTROL_REG, data);

	FUNC11(priv->map, DS1343_STATUS_REG, &data);
	data &= ~(DS1343_OSF | DS1343_IRQF1 | DS1343_IRQF0);
	FUNC12(priv->map, DS1343_STATUS_REG, data);

	priv->rtc = FUNC8(&spi->dev);
	if (FUNC0(priv->rtc))
		return FUNC1(priv->rtc);

	priv->rtc->nvram_old_abi = true;
	priv->rtc->ops = &ds1343_rtc_ops;

	res = FUNC14(priv->rtc);
	if (res)
		return res;

	nvmem_cfg.priv = priv;
	FUNC13(priv->rtc, &nvmem_cfg);

	priv->irq = spi->irq;

	if (priv->irq >= 0) {
		res = FUNC7(&spi->dev, spi->irq, NULL,
						ds1343_thread, IRQF_ONESHOT,
						"ds1343", priv);
		if (res) {
			priv->irq = -1;
			FUNC2(&spi->dev,
				"unable to request irq for rtc ds1343\n");
		} else {
			FUNC4(&spi->dev, true);
			FUNC3(&spi->dev, spi->irq);
		}
	}

	res = FUNC9(&spi->dev);
	if (res)
		FUNC2(&spi->dev,
			"unable to create sysfs entries for rtc ds1343\n");

	return 0;
}