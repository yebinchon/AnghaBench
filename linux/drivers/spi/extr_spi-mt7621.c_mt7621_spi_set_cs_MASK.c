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
struct spi_device {int chip_select; } ;
struct mt7621_spi {scalar_t__ pending_write; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int MASTER_FULL_DUPLEX ; 
 int MASTER_MORE_BUFMODE ; 
 int MASTER_RS_SLAVE_SEL ; 
 int /*<<< orphan*/  MT7621_SPI_MASTER ; 
 int /*<<< orphan*/  MT7621_SPI_POLAR ; 
 int FUNC1 (struct mt7621_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7621_spi*,int /*<<< orphan*/ ,int) ; 
 struct mt7621_spi* FUNC3 (struct spi_device*) ; 

__attribute__((used)) static void FUNC4(struct spi_device *spi, int enable)
{
	struct mt7621_spi *rs = FUNC3(spi);
	int cs = spi->chip_select;
	u32 polar = 0;
	u32 master;

	/*
	 * Select SPI device 7, enable "more buffer mode" and disable
	 * full-duplex (only half-duplex really works on this chip
	 * reliably)
	 */
	master = FUNC1(rs, MT7621_SPI_MASTER);
	master |= MASTER_RS_SLAVE_SEL | MASTER_MORE_BUFMODE;
	master &= ~MASTER_FULL_DUPLEX;
	FUNC2(rs, MT7621_SPI_MASTER, master);

	rs->pending_write = 0;

	if (enable)
		polar = FUNC0(cs);
	FUNC2(rs, MT7621_SPI_POLAR, polar);
}