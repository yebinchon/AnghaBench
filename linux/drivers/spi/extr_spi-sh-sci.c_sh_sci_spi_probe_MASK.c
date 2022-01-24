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
struct spi_master {int /*<<< orphan*/  num_chipselect; int /*<<< orphan*/  bus_num; } ;
struct TYPE_3__ {struct spi_master* master; int /*<<< orphan*/ * txrx_word; int /*<<< orphan*/  chipselect; } ;
struct sh_sci_spi {TYPE_1__ bitbang; int /*<<< orphan*/  membase; int /*<<< orphan*/  val; TYPE_2__* info; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_chipselect; int /*<<< orphan*/  bus_num; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  PIN_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct sh_sci_spi*) ; 
 size_t SPI_MODE_0 ; 
 size_t SPI_MODE_1 ; 
 size_t SPI_MODE_2 ; 
 size_t SPI_MODE_3 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct sh_sci_spi*) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 
 int /*<<< orphan*/  FUNC9 (struct sh_sci_spi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sh_sci_spi_chipselect ; 
 int /*<<< orphan*/  sh_sci_spi_txrx_mode0 ; 
 int /*<<< orphan*/  sh_sci_spi_txrx_mode1 ; 
 int /*<<< orphan*/  sh_sci_spi_txrx_mode2 ; 
 int /*<<< orphan*/  sh_sci_spi_txrx_mode3 ; 
 struct spi_master* FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (TYPE_1__*) ; 
 struct sh_sci_spi* FUNC12 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC13 (struct spi_master*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *dev)
{
	struct resource	*r;
	struct spi_master *master;
	struct sh_sci_spi *sp;
	int ret;

	master = FUNC10(&dev->dev, sizeof(struct sh_sci_spi));
	if (master == NULL) {
		FUNC1(&dev->dev, "failed to allocate spi master\n");
		ret = -ENOMEM;
		goto err0;
	}

	sp = FUNC12(master);

	FUNC7(dev, sp);
	sp->info = FUNC2(&dev->dev);
	if (!sp->info) {
		FUNC1(&dev->dev, "platform data is missing\n");
		ret = -ENOENT;
		goto err1;
	}

	/* setup spi bitbang adaptor */
	sp->bitbang.master = master;
	sp->bitbang.master->bus_num = sp->info->bus_num;
	sp->bitbang.master->num_chipselect = sp->info->num_chipselect;
	sp->bitbang.chipselect = sh_sci_spi_chipselect;

	sp->bitbang.txrx_word[SPI_MODE_0] = sh_sci_spi_txrx_mode0;
	sp->bitbang.txrx_word[SPI_MODE_1] = sh_sci_spi_txrx_mode1;
	sp->bitbang.txrx_word[SPI_MODE_2] = sh_sci_spi_txrx_mode2;
	sp->bitbang.txrx_word[SPI_MODE_3] = sh_sci_spi_txrx_mode3;

	r = FUNC6(dev, IORESOURCE_MEM, 0);
	if (r == NULL) {
		ret = -ENOENT;
		goto err1;
	}
	sp->membase = FUNC4(r->start, FUNC8(r));
	if (!sp->membase) {
		ret = -ENXIO;
		goto err1;
	}
	sp->val = FUNC3(FUNC0(sp));
	FUNC9(sp, PIN_INIT, 1);

	ret = FUNC11(&sp->bitbang);
	if (!ret)
		return 0;

	FUNC9(sp, PIN_INIT, 0);
	FUNC5(sp->membase);
 err1:
	FUNC13(sp->bitbang.master);
 err0:
	return ret;
}