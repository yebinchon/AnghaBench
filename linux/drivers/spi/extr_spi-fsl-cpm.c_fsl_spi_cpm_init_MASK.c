#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mpc8xxx_spi {int flags; TYPE_1__* pram; void* dma_dummy_tx; TYPE_1__* rx_bd; TYPE_1__* tx_bd; void* dma_dummy_rx; int /*<<< orphan*/  subblock; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  txtmp; int /*<<< orphan*/  tbc; int /*<<< orphan*/  tbptr; int /*<<< orphan*/  tdp; int /*<<< orphan*/  tstate; int /*<<< orphan*/  rxtmp; int /*<<< orphan*/  rbc; int /*<<< orphan*/  rbptr; int /*<<< orphan*/  rdp; int /*<<< orphan*/  rstate; int /*<<< orphan*/  mrblr; int /*<<< orphan*/  rfcr; int /*<<< orphan*/  tfcr; int /*<<< orphan*/  rbase; int /*<<< orphan*/  tbase; } ;

/* Variables and functions */
 int CPMFCR_EB ; 
 int CPMFCR_GBL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  QE_CR_SUBBLOCK_SPI1 ; 
 int /*<<< orphan*/  QE_CR_SUBBLOCK_SPI2 ; 
 int SPI_CPM1 ; 
 int SPI_CPM_MODE ; 
 unsigned long SPI_MRBLR ; 
 int SPI_QE ; 
 void* FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 unsigned long FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int) ; 
 void* FUNC9 (struct device*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct device*,void*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,void*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  empty_zero_page ; 
 int /*<<< orphan*/  fsl_dummy_rx ; 
 int /*<<< orphan*/  FUNC12 () ; 
 unsigned long FUNC13 (struct mpc8xxx_spi*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/ * FUNC15 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 

int FUNC20(struct mpc8xxx_spi *mspi)
{
	struct device *dev = mspi->dev;
	struct device_node *np = dev->of_node;
	const u32 *iprop;
	int size;
	unsigned long bds_ofs;

	if (!(mspi->flags & SPI_CPM_MODE))
		return 0;

	if (!FUNC12())
		return -ENOMEM;

	if (mspi->flags & SPI_QE) {
		iprop = FUNC15(np, "cell-index", &size);
		if (iprop && size == sizeof(*iprop))
			mspi->subblock = *iprop;

		switch (mspi->subblock) {
		default:
			FUNC7(dev, "cell-index unspecified, assuming SPI1\n");
			/* fall through */
		case 0:
			mspi->subblock = QE_CR_SUBBLOCK_SPI1;
			break;
		case 1:
			mspi->subblock = QE_CR_SUBBLOCK_SPI2;
			break;
		}
	}

	if (mspi->flags & SPI_CPM1) {
		void *pram;

		pram = FUNC8(FUNC19(dev),
						      1);
		if (FUNC0(pram))
			mspi->pram = NULL;
		else
			mspi->pram = pram;
	} else {
		unsigned long pram_ofs = FUNC13(mspi);

		if (FUNC1(pram_ofs))
			mspi->pram = NULL;
		else
			mspi->pram = FUNC2(pram_ofs);
	}
	if (mspi->pram == NULL) {
		FUNC6(dev, "can't allocate spi parameter ram\n");
		goto err_pram;
	}

	bds_ofs = FUNC3(sizeof(*mspi->tx_bd) +
				  sizeof(*mspi->rx_bd), 8);
	if (FUNC1(bds_ofs)) {
		FUNC6(dev, "can't allocate bds\n");
		goto err_bds;
	}

	mspi->dma_dummy_tx = FUNC9(dev, empty_zero_page, PAGE_SIZE,
					    DMA_TO_DEVICE);
	if (FUNC10(dev, mspi->dma_dummy_tx)) {
		FUNC6(dev, "unable to map dummy tx buffer\n");
		goto err_dummy_tx;
	}

	mspi->dma_dummy_rx = FUNC9(dev, fsl_dummy_rx, SPI_MRBLR,
					    DMA_FROM_DEVICE);
	if (FUNC10(dev, mspi->dma_dummy_rx)) {
		FUNC6(dev, "unable to map dummy rx buffer\n");
		goto err_dummy_rx;
	}

	mspi->tx_bd = FUNC2(bds_ofs);
	mspi->rx_bd = FUNC2(bds_ofs + sizeof(*mspi->tx_bd));

	/* Initialize parameter ram. */
	FUNC17(&mspi->pram->tbase, FUNC5(mspi->tx_bd));
	FUNC17(&mspi->pram->rbase, FUNC5(mspi->rx_bd));
	FUNC16(&mspi->pram->tfcr, CPMFCR_EB | CPMFCR_GBL);
	FUNC16(&mspi->pram->rfcr, CPMFCR_EB | CPMFCR_GBL);
	FUNC17(&mspi->pram->mrblr, SPI_MRBLR);
	FUNC18(&mspi->pram->rstate, 0);
	FUNC18(&mspi->pram->rdp, 0);
	FUNC17(&mspi->pram->rbptr, 0);
	FUNC17(&mspi->pram->rbc, 0);
	FUNC18(&mspi->pram->rxtmp, 0);
	FUNC18(&mspi->pram->tstate, 0);
	FUNC18(&mspi->pram->tdp, 0);
	FUNC17(&mspi->pram->tbptr, 0);
	FUNC17(&mspi->pram->tbc, 0);
	FUNC18(&mspi->pram->txtmp, 0);

	return 0;

err_dummy_rx:
	FUNC11(dev, mspi->dma_dummy_tx, PAGE_SIZE, DMA_TO_DEVICE);
err_dummy_tx:
	FUNC4(bds_ofs);
err_bds:
	if (!(mspi->flags & SPI_CPM1))
		FUNC4(FUNC5(mspi->pram));
err_pram:
	FUNC14();
	return -ENOMEM;
}