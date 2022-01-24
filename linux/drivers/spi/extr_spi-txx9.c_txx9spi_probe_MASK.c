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
typedef  scalar_t__ u16 ;
struct txx9spi {int baseclk; int last_chipselect; int /*<<< orphan*/ * clk; int /*<<< orphan*/ * membase; int /*<<< orphan*/  waitq; int /*<<< orphan*/  queue; int /*<<< orphan*/  lock; int /*<<< orphan*/  work; } ;
struct spi_master {int max_speed_hz; int mode_bits; int bits_per_word_mask; scalar_t__ num_chipselect; int /*<<< orphan*/  transfer; int /*<<< orphan*/  setup; int /*<<< orphan*/  bus_num; int /*<<< orphan*/  min_speed_hz; } ;
struct resource {scalar_t__ start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 scalar_t__ SPI_MAX_DIVIDER ; 
 int SPI_MIN_DIVIDER ; 
 int /*<<< orphan*/  TXx9_SPMCR ; 
 int TXx9_SPMCR_BCLR ; 
 int TXx9_SPMCR_CONFIG ; 
 int TXx9_SPMCR_OPMODE ; 
 int TXx9_SPMCR_SPSTP ; 
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,unsigned long long,int,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,struct resource*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct txx9spi*) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct spi_master*) ; 
 struct spi_master* FUNC18 (int /*<<< orphan*/ *,int) ; 
 struct txx9spi* FUNC19 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC20 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txx9spi_interrupt ; 
 int FUNC22 (struct txx9spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  txx9spi_setup ; 
 int /*<<< orphan*/  txx9spi_transfer ; 
 int /*<<< orphan*/  txx9spi_work ; 
 int /*<<< orphan*/  FUNC23 (struct txx9spi*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(struct platform_device *dev)
{
	struct spi_master *master;
	struct txx9spi *c;
	struct resource *res;
	int ret = -ENODEV;
	u32 mcr;
	int irq;

	master = FUNC18(&dev->dev, sizeof(*c));
	if (!master)
		return ret;
	c = FUNC19(master);
	FUNC17(dev, master);

	FUNC2(&c->work, txx9spi_work);
	FUNC21(&c->lock);
	FUNC1(&c->queue);
	FUNC14(&c->waitq);

	c->clk = FUNC10(&dev->dev, "spi-baseclk");
	if (FUNC3(c->clk)) {
		ret = FUNC4(c->clk);
		c->clk = NULL;
		goto exit;
	}
	ret = FUNC8(c->clk);
	if (ret) {
		c->clk = NULL;
		goto exit;
	}
	c->baseclk = FUNC7(c->clk);
	master->min_speed_hz = FUNC0(c->baseclk, SPI_MAX_DIVIDER + 1);
	master->max_speed_hz = c->baseclk / (SPI_MIN_DIVIDER + 1);

	res = FUNC16(dev, IORESOURCE_MEM, 0);
	c->membase = FUNC11(&dev->dev, res);
	if (FUNC3(c->membase))
		goto exit_busy;

	/* enter config mode */
	mcr = FUNC22(c, TXx9_SPMCR);
	mcr &= ~(TXx9_SPMCR_OPMODE | TXx9_SPMCR_SPSTP | TXx9_SPMCR_BCLR);
	FUNC23(c, mcr | TXx9_SPMCR_CONFIG | TXx9_SPMCR_BCLR, TXx9_SPMCR);

	irq = FUNC15(dev, 0);
	if (irq < 0)
		goto exit_busy;
	ret = FUNC12(&dev->dev, irq, txx9spi_interrupt, 0,
			       "spi_txx9", c);
	if (ret)
		goto exit;

	c->last_chipselect = -1;

	FUNC9(&dev->dev, "at %#llx, irq %d, %dMHz\n",
		 (unsigned long long)res->start, irq,
		 (c->baseclk + 500000) / 1000000);

	/* the spi->mode bits understood by this driver: */
	master->mode_bits = SPI_CS_HIGH | SPI_CPOL | SPI_CPHA;

	master->bus_num = dev->id;
	master->setup = txx9spi_setup;
	master->transfer = txx9spi_transfer;
	master->num_chipselect = (u16)UINT_MAX; /* any GPIO numbers */
	master->bits_per_word_mask = FUNC5(8) | FUNC5(16);

	ret = FUNC13(&dev->dev, master);
	if (ret)
		goto exit;
	return 0;
exit_busy:
	ret = -EBUSY;
exit:
	FUNC6(c->clk);
	FUNC20(master);
	return ret;
}