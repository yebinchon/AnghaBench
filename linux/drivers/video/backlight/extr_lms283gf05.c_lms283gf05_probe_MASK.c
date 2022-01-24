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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct lms283gf05_state {struct lcd_device* ld; struct spi_device* spi; } ;
struct lms283gf05_pdata {int /*<<< orphan*/  reset_inverted; int /*<<< orphan*/  reset_gpio; } ;
struct lcd_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GPIOF_DIR_OUT ; 
 int GPIOF_INIT_HIGH ; 
 int GPIOF_INIT_LOW ; 
 scalar_t__ FUNC1 (struct lcd_device*) ; 
 int FUNC2 (struct lcd_device*) ; 
 struct lms283gf05_pdata* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 struct lms283gf05_state* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct lcd_device* FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,struct lms283gf05_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  disp_initseq ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lms_ops ; 
 int /*<<< orphan*/  FUNC9 (struct spi_device*,struct lms283gf05_state*) ; 

__attribute__((used)) static int FUNC10(struct spi_device *spi)
{
	struct lms283gf05_state *st;
	struct lms283gf05_pdata *pdata = FUNC3(&spi->dev);
	struct lcd_device *ld;
	int ret = 0;

	if (pdata != NULL) {
		ret = FUNC4(&spi->dev, pdata->reset_gpio,
				GPIOF_DIR_OUT | (!pdata->reset_inverted ?
				GPIOF_INIT_HIGH : GPIOF_INIT_LOW),
				"LMS283GF05 RESET");
		if (ret)
			return ret;
	}

	st = FUNC5(&spi->dev, sizeof(struct lms283gf05_state),
				GFP_KERNEL);
	if (st == NULL)
		return -ENOMEM;

	ld = FUNC6(&spi->dev, "lms283gf05", &spi->dev, st,
					&lms_ops);
	if (FUNC1(ld))
		return FUNC2(ld);

	st->spi = spi;
	st->ld = ld;

	FUNC9(spi, st);

	/* kick in the LCD */
	if (pdata)
		FUNC7(pdata->reset_gpio, pdata->reset_inverted);
	FUNC8(spi, disp_initseq, FUNC0(disp_initseq));

	return 0;
}