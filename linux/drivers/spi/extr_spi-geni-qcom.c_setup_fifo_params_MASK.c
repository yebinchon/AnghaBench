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
typedef  int u32 ;
struct spi_master {int dummy; } ;
struct geni_se {scalar_t__ base; } ;
struct spi_geni_master {int /*<<< orphan*/  cur_speed_hz; int /*<<< orphan*/  dev; int /*<<< orphan*/  cur_bits_per_word; struct geni_se se; } ;
struct spi_device {int mode; int chip_select; int /*<<< orphan*/  bits_per_word; int /*<<< orphan*/  max_speed_hz; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CLK_DIV_SHFT ; 
 int CLK_SEL_MSK ; 
 int CPHA ; 
 int CPOL ; 
 scalar_t__ GENI_SER_M_CLK_CFG ; 
 int LOOPBACK_ENABLE ; 
 int LOOPBACK_MSK ; 
 int SER_CLK_EN ; 
 scalar_t__ SE_GENI_CLK_SEL ; 
 scalar_t__ SE_SPI_CPHA ; 
 scalar_t__ SE_SPI_CPOL ; 
 scalar_t__ SE_SPI_DEMUX_OUTPUT_INV ; 
 scalar_t__ SE_SPI_DEMUX_SEL ; 
 scalar_t__ SE_SPI_LOOPBACK ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int SPI_LOOP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct spi_geni_master*,int*,int*) ; 
 int FUNC3 (scalar_t__) ; 
 struct spi_geni_master* FUNC4 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_geni_master*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi_slv,
					struct spi_master *spi)
{
	struct spi_geni_master *mas = FUNC4(spi);
	struct geni_se *se = &mas->se;
	u32 loopback_cfg, cpol, cpha, demux_output_inv;
	u32 demux_sel, clk_sel, m_clk_cfg, idx, div;
	int ret;

	loopback_cfg = FUNC3(se->base + SE_SPI_LOOPBACK);
	cpol = FUNC3(se->base + SE_SPI_CPOL);
	cpha = FUNC3(se->base + SE_SPI_CPHA);
	demux_output_inv = 0;
	loopback_cfg &= ~LOOPBACK_MSK;
	cpol &= ~CPOL;
	cpha &= ~CPHA;

	if (spi_slv->mode & SPI_LOOP)
		loopback_cfg |= LOOPBACK_ENABLE;

	if (spi_slv->mode & SPI_CPOL)
		cpol |= CPOL;

	if (spi_slv->mode & SPI_CPHA)
		cpha |= CPHA;

	if (spi_slv->mode & SPI_CS_HIGH)
		demux_output_inv = FUNC0(spi_slv->chip_select);

	demux_sel = spi_slv->chip_select;
	mas->cur_speed_hz = spi_slv->max_speed_hz;
	mas->cur_bits_per_word = spi_slv->bits_per_word;

	ret = FUNC2(mas->cur_speed_hz, mas, &idx, &div);
	if (ret) {
		FUNC1(mas->dev, "Err setting clks ret(%d) for %ld\n",
							ret, mas->cur_speed_hz);
		return ret;
	}

	clk_sel = idx & CLK_SEL_MSK;
	m_clk_cfg = (div << CLK_DIV_SHFT) | SER_CLK_EN;
	FUNC5(mas, spi_slv->mode, spi_slv->bits_per_word);
	FUNC6(loopback_cfg, se->base + SE_SPI_LOOPBACK);
	FUNC6(demux_sel, se->base + SE_SPI_DEMUX_SEL);
	FUNC6(cpha, se->base + SE_SPI_CPHA);
	FUNC6(cpol, se->base + SE_SPI_CPOL);
	FUNC6(demux_output_inv, se->base + SE_SPI_DEMUX_OUTPUT_INV);
	FUNC6(clk_sel, se->base + SE_GENI_CLK_SEL);
	FUNC6(m_clk_cfg, se->base + GENI_SER_M_CLK_CFG);
	return 0;
}