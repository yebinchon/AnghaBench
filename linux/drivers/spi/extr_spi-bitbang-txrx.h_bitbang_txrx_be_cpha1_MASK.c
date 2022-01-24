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
typedef  int u8 ;
typedef  int u32 ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 unsigned int SPI_MASTER_NO_RX ; 
 unsigned int SPI_MASTER_NO_TX ; 
 int FUNC0 (struct spi_device*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

__attribute__((used)) static inline u32
FUNC5(struct spi_device *spi,
		unsigned nsecs, unsigned cpol, unsigned flags,
		u32 word, u8 bits)
{
	/* if (cpol == 0) this is SPI_MODE_1; else this is SPI_MODE_3 */

	u32 oldbit = (!(word & (1<<(bits-1)))) << 31;
	/* clock starts at inactive polarity */
	for (word <<= (32 - bits); FUNC1(bits); bits--) {

		/* setup MSB (to slave) on leading edge */
		FUNC3(spi, !cpol);
		if ((flags & SPI_MASTER_NO_TX) == 0) {
			if ((word & (1 << 31)) != oldbit) {
				FUNC2(spi, word & (1 << 31));
				oldbit = word & (1 << 31);
			}
		}
		FUNC4(nsecs); /* T(setup) */

		FUNC3(spi, cpol);
		FUNC4(nsecs);

		/* sample MSB (from slave) on trailing edge */
		word <<= 1;
		if ((flags & SPI_MASTER_NO_RX) == 0)
			word |= FUNC0(spi);
	}
	return word;
}