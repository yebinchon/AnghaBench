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
struct sifive_spi {int /*<<< orphan*/  done; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIFIVE_SPI_REG_IE ; 
 int /*<<< orphan*/  SIFIVE_SPI_REG_IP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct sifive_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sifive_spi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct sifive_spi *spi, u32 bit, int poll)
{
	if (poll) {
		u32 cr;

		do {
			cr = FUNC1(spi, SIFIVE_SPI_REG_IP);
		} while (!(cr & bit));
	} else {
		FUNC0(&spi->done);
		FUNC2(spi, SIFIVE_SPI_REG_IE, bit);
		FUNC3(&spi->done);
	}
}