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
struct tdo24m_platform_data {int model; } ;
struct spi_transfer {int /*<<< orphan*/ * tx_buf; scalar_t__ cs_change; } ;
struct spi_message {int dummy; } ;
struct tdo24m {int color_invert; int /*<<< orphan*/  lcd_dev; int /*<<< orphan*/  adj_mode; int /*<<< orphan*/ * buf; struct spi_transfer xfer; struct spi_message msg; int /*<<< orphan*/  mode; int /*<<< orphan*/  power; struct spi_device* spi_dev; } ;
struct spi_device {int bits_per_word; int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; } ;
typedef  enum tdo24m_model { ____Placeholder_tdo24m_model } tdo24m_model ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MODE_VGA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_MODE_3 ; 
#define  TDO24M 129 
 int TDO24M_SPI_BUFF_SIZE ; 
#define  TDO35S 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct tdo24m_platform_data* FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,struct tdo24m*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_message*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,struct tdo24m*) ; 
 int FUNC9 (struct spi_device*) ; 
 int /*<<< orphan*/  tdo24m_adj_mode ; 
 int /*<<< orphan*/  tdo24m_ops ; 
 int FUNC10 (struct tdo24m*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tdo35s_adj_mode ; 

__attribute__((used)) static int FUNC11(struct spi_device *spi)
{
	struct tdo24m *lcd;
	struct spi_message *m;
	struct spi_transfer *x;
	struct tdo24m_platform_data *pdata;
	enum tdo24m_model model;
	int err;

	pdata = FUNC3(&spi->dev);
	if (pdata)
		model = pdata->model;
	else
		model = TDO24M;

	spi->bits_per_word = 8;
	spi->mode = SPI_MODE_3;
	err = FUNC9(spi);
	if (err)
		return err;

	lcd = FUNC4(&spi->dev, sizeof(struct tdo24m), GFP_KERNEL);
	if (!lcd)
		return -ENOMEM;

	lcd->spi_dev = spi;
	lcd->power = FB_BLANK_POWERDOWN;
	lcd->mode = MODE_VGA;	/* default to VGA */

	lcd->buf = FUNC4(&spi->dev, TDO24M_SPI_BUFF_SIZE, GFP_KERNEL);
	if (lcd->buf == NULL)
		return -ENOMEM;

	m = &lcd->msg;
	x = &lcd->xfer;

	FUNC7(m);

	x->cs_change = 0;
	x->tx_buf = &lcd->buf[0];
	FUNC6(x, m);

	switch (model) {
	case TDO24M:
		lcd->color_invert = 1;
		lcd->adj_mode = tdo24m_adj_mode;
		break;
	case TDO35S:
		lcd->adj_mode = tdo35s_adj_mode;
		lcd->color_invert = 0;
		break;
	default:
		FUNC2(&spi->dev, "Unsupported model");
		return -EINVAL;
	}

	lcd->lcd_dev = FUNC5(&spi->dev, "tdo24m", &spi->dev,
						lcd, &tdo24m_ops);
	if (FUNC0(lcd->lcd_dev))
		return FUNC1(lcd->lcd_dev);

	FUNC8(spi, lcd);
	err = FUNC10(lcd, FB_BLANK_UNBLANK);
	if (err)
		return err;

	return 0;
}