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
struct TYPE_2__ {int rx_len; int fragmens_len; } ;
struct sprd_spi {int trans_mode; int hw_mode; int (* write_bufs ) (struct sprd_spi*,int /*<<< orphan*/ ) ;TYPE_1__ dma; int /*<<< orphan*/  xfer_completion; int /*<<< orphan*/ * dev; int /*<<< orphan*/  trans_len; } ;
struct spi_transfer {int len; } ;
struct spi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int SPI_3WIRE ; 
 int SPI_TX_DUAL ; 
 int SPRD_SPI_RX_MODE ; 
 int SPRD_SPI_TX_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sprd_spi* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sprd_spi*,int) ; 
 int FUNC4 (struct sprd_spi*,struct spi_transfer*) ; 
 int FUNC5 (struct sprd_spi*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct sprd_spi*) ; 
 int /*<<< orphan*/  FUNC7 (struct sprd_spi*) ; 
 int /*<<< orphan*/  FUNC8 (struct sprd_spi*) ; 
 int /*<<< orphan*/  FUNC9 (struct sprd_spi*) ; 
 int /*<<< orphan*/  FUNC10 (struct sprd_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sprd_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sprd_spi*) ; 
 int FUNC13 (struct sprd_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct spi_device *sdev,
				  struct spi_transfer *t)
{
	struct sprd_spi *ss = FUNC2(sdev->master);
	u32 trans_len = ss->trans_len;
	int ret, write_size = 0;

	FUNC1(&ss->xfer_completion);
	FUNC8(ss);
	if (ss->trans_mode & SPRD_SPI_TX_MODE) {
		write_size = FUNC5(ss, t);
		FUNC11(ss, trans_len);

		/*
		 * For our 3 wires mode or dual TX line mode, we need
		 * to request the controller to transfer.
		 */
		if (ss->hw_mode & SPI_3WIRE || ss->hw_mode & SPI_TX_DUAL)
			FUNC12(ss);
	} else {
		FUNC10(ss, trans_len);

		/*
		 * For our 3 wires mode or dual TX line mode, we need
		 * to request the controller to read.
		 */
		if (ss->hw_mode & SPI_3WIRE || ss->hw_mode & SPI_TX_DUAL)
			FUNC9(ss);
		else
			write_size = ss->write_bufs(ss, trans_len);
	}

	if (write_size < 0) {
		ret = write_size;
		FUNC0(ss->dev, "failed to write, ret = %d\n", ret);
		goto trans_complete;
	}

	if (ss->trans_mode & SPRD_SPI_RX_MODE) {
		/*
		 * Set up the DMA receive data length, which must be an
		 * integral multiple of fragment length. But when the length
		 * of received data is less than fragment length, DMA can be
		 * configured to receive data according to the actual length
		 * of received data.
		 */
		ss->dma.rx_len = t->len > ss->dma.fragmens_len ?
			(t->len - t->len % ss->dma.fragmens_len) :
			 t->len;
		ret = FUNC4(ss, t);
		if (ret < 0) {
			FUNC0(&sdev->dev,
				"failed to configure rx DMA, ret = %d\n", ret);
			goto trans_complete;
		}
	}

	FUNC3(ss, true);
	FUNC14(&(ss->xfer_completion));

	if (ss->trans_mode & SPRD_SPI_TX_MODE)
		ret = write_size;
	else
		ret = ss->dma.rx_len;

trans_complete:
	FUNC3(ss, false);
	FUNC6(ss);
	FUNC7(ss);

	return ret;
}