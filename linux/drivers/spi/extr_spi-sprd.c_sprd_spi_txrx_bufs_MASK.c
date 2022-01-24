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
typedef  scalar_t__ u32 ;
struct sprd_spi {scalar_t__ trans_len; int trans_mode; int hw_mode; scalar_t__ (* read_bufs ) (struct sprd_spi*,scalar_t__) ;scalar_t__ (* write_bufs ) (struct sprd_spi*,scalar_t__) ;} ;
struct spi_transfer {int dummy; } ;
struct spi_device {int /*<<< orphan*/  controller; } ;

/* Variables and functions */
 int SPI_3WIRE ; 
 int SPI_TX_DUAL ; 
 scalar_t__ SPRD_SPI_FIFO_SIZE ; 
 int SPRD_SPI_RX_MODE ; 
 int SPRD_SPI_TX_MODE ; 
 struct sprd_spi* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sprd_spi*) ; 
 int /*<<< orphan*/  FUNC2 (struct sprd_spi*) ; 
 int /*<<< orphan*/  FUNC3 (struct sprd_spi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sprd_spi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sprd_spi*) ; 
 int FUNC6 (struct sprd_spi*,struct spi_transfer*) ; 
 int FUNC7 (struct sprd_spi*,struct spi_transfer*) ; 
 scalar_t__ FUNC8 (struct sprd_spi*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct sprd_spi*,scalar_t__) ; 
 scalar_t__ FUNC10 (struct sprd_spi*,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct spi_device *sdev, struct spi_transfer *t)
{
	struct sprd_spi *ss = FUNC0(sdev->controller);
	u32 trans_len = ss->trans_len, len;
	int ret, write_size = 0, read_size = 0;

	while (trans_len) {
		len = trans_len > SPRD_SPI_FIFO_SIZE ? SPRD_SPI_FIFO_SIZE :
			trans_len;
		if (ss->trans_mode & SPRD_SPI_TX_MODE) {
			FUNC4(ss, len);
			write_size += ss->write_bufs(ss, len);

			/*
			 * For our 3 wires mode or dual TX line mode, we need
			 * to request the controller to transfer.
			 */
			if (ss->hw_mode & SPI_3WIRE || ss->hw_mode & SPI_TX_DUAL)
				FUNC5(ss);

			ret = FUNC7(ss, t);
		} else {
			FUNC3(ss, len);

			/*
			 * For our 3 wires mode or dual TX line mode, we need
			 * to request the controller to read.
			 */
			if (ss->hw_mode & SPI_3WIRE || ss->hw_mode & SPI_TX_DUAL)
				FUNC2(ss);
			else
				write_size += ss->write_bufs(ss, len);

			ret = FUNC6(ss, t);
		}

		if (ret)
			goto complete;

		if (ss->trans_mode & SPRD_SPI_RX_MODE)
			read_size += ss->read_bufs(ss, len);

		trans_len -= len;
	}

	if (ss->trans_mode & SPRD_SPI_TX_MODE)
		ret = write_size;
	else
		ret = read_size;
complete:
	FUNC1(ss);

	return ret;
}