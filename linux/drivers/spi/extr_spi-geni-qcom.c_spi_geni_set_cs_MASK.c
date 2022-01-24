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
struct spi_master {int dummy; } ;
struct geni_se {int dummy; } ;
struct spi_geni_master {int /*<<< orphan*/  dev; int /*<<< orphan*/  xfer_done; int /*<<< orphan*/  cur_mcmd; struct geni_se se; } ;
struct spi_device {int mode; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CS ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  SPI_CS_ASSERT ; 
 int /*<<< orphan*/  SPI_CS_DEASSERT ; 
 int SPI_CS_HIGH ; 
 struct spi_master* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct geni_se*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_master*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct spi_geni_master* FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct spi_device *slv, bool set_flag)
{
	struct spi_geni_master *mas = FUNC6(slv->master);
	struct spi_master *spi = FUNC0(mas->dev);
	struct geni_se *se = &mas->se;
	unsigned long time_left;

	FUNC5(&mas->xfer_done);
	FUNC3(mas->dev);
	if (!(slv->mode & SPI_CS_HIGH))
		set_flag = !set_flag;

	mas->cur_mcmd = CMD_CS;
	if (set_flag)
		FUNC1(se, SPI_CS_ASSERT, 0);
	else
		FUNC1(se, SPI_CS_DEASSERT, 0);

	time_left = FUNC7(&mas->xfer_done, HZ);
	if (!time_left)
		FUNC2(spi, NULL);

	FUNC4(mas->dev);
}