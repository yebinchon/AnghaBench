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
struct lms283gf05_state {struct spi_device* spi; } ;
struct lms283gf05_pdata {int /*<<< orphan*/  reset_inverted; int /*<<< orphan*/  reset_gpio; } ;
struct lcd_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FB_BLANK_NORMAL ; 
 struct lms283gf05_pdata* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  disp_initseq ; 
 int /*<<< orphan*/  disp_pdwnseq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lms283gf05_state* FUNC3 (struct lcd_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct lcd_device *ld, int power)
{
	struct lms283gf05_state *st = FUNC3(ld);
	struct spi_device *spi = st->spi;
	struct lms283gf05_pdata *pdata = FUNC1(&spi->dev);

	if (power <= FB_BLANK_NORMAL) {
		if (pdata)
			FUNC4(pdata->reset_gpio,
					pdata->reset_inverted);
		FUNC5(spi, disp_initseq, FUNC0(disp_initseq));
	} else {
		FUNC5(spi, disp_pdwnseq, FUNC0(disp_pdwnseq));
		if (pdata)
			FUNC2(pdata->reset_gpio,
					pdata->reset_inverted);
	}

	return 0;
}