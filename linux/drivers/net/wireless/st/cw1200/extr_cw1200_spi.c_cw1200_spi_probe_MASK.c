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
struct spi_device {int max_speed_hz; int bits_per_word; int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; int /*<<< orphan*/  chip_select; } ;
struct hwbus_priv {struct cw1200_platform_data_spi const* pdata; int /*<<< orphan*/  core; int /*<<< orphan*/  wq; int /*<<< orphan*/  lock; struct spi_device* func; } ;
struct cw1200_platform_data_spi {int spi_bits_per_word; int /*<<< orphan*/  have_5ghz; int /*<<< orphan*/  sdd_file; int /*<<< orphan*/  macaddr; int /*<<< orphan*/  ref_clk; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SPI_MODE_0 ; 
 int FUNC0 (int /*<<< orphan*/ *,struct hwbus_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cw1200_spi_hwbus_ops ; 
 int FUNC1 (struct hwbus_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct hwbus_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_platform_data_spi const*) ; 
 scalar_t__ FUNC4 (struct cw1200_platform_data_spi const*) ; 
 struct cw1200_platform_data_spi* FUNC5 (int /*<<< orphan*/ *) ; 
 struct hwbus_priv* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct spi_device*,struct hwbus_priv*) ; 
 scalar_t__ FUNC11 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct spi_device *func)
{
	const struct cw1200_platform_data_spi *plat_data =
		FUNC5(&func->dev);
	struct hwbus_priv *self;
	int status;

	/* Sanity check speed */
	if (func->max_speed_hz > 52000000)
		func->max_speed_hz = 52000000;
	if (func->max_speed_hz < 1000000)
		func->max_speed_hz = 1000000;

	/* Fix up transfer size */
	if (plat_data->spi_bits_per_word)
		func->bits_per_word = plat_data->spi_bits_per_word;
	if (!func->bits_per_word)
		func->bits_per_word = 16;

	/* And finally.. */
	func->mode = SPI_MODE_0;

	FUNC9("cw1200_wlan_spi: Probe called (CS %d M %d BPW %d CLK %d)\n",
		func->chip_select, func->mode, func->bits_per_word,
		func->max_speed_hz);

	if (FUNC4(plat_data)) {
		FUNC8("spi_on() failed!\n");
		return -1;
	}

	if (FUNC11(func)) {
		FUNC8("spi_setup() failed!\n");
		return -1;
	}

	self = FUNC6(&func->dev, sizeof(*self), GFP_KERNEL);
	if (!self) {
		FUNC8("Can't allocate SPI hwbus_priv.");
		return -ENOMEM;
	}

	self->pdata = plat_data;
	self->func = func;
	FUNC12(&self->lock);

	FUNC10(func, self);

	FUNC7(&self->wq);

	status = FUNC1(self);

	status = FUNC0(&cw1200_spi_hwbus_ops,
				   self, &func->dev, &self->core,
				   self->pdata->ref_clk,
				   self->pdata->macaddr,
				   self->pdata->sdd_file,
				   self->pdata->have_5ghz);

	if (status) {
		FUNC2(self);
		FUNC3(plat_data);
	}

	return status;
}