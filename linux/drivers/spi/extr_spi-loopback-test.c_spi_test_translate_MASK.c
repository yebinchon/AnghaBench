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
struct spi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (void*,size_t,void*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_TEST_MAX_SIZE ; 
 size_t SPI_TEST_MAX_SIZE_HALF ; 
 int SPI_TEST_MAX_SIZE_PLUS ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,void*,void*,void*,void*,void*,void*) ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi,
			      void **ptr, size_t len,
			      void *tx, void *rx)
{
	size_t off;

	/* return on null */
	if (!*ptr)
		return 0;

	/* in the MAX_SIZE_HALF case modify the pointer */
	if (((size_t)*ptr) & SPI_TEST_MAX_SIZE_HALF)
		/* move the pointer to the correct range */
		*ptr += (SPI_TEST_MAX_SIZE_PLUS / 2) -
			SPI_TEST_MAX_SIZE_HALF;

	/* RX range
	 * - we check against MAX_SIZE_PLUS to allow for automated alignment
	 */
	if (FUNC0(*ptr, len,  FUNC1(0), SPI_TEST_MAX_SIZE_PLUS)) {
		off = *ptr - FUNC1(0);
		*ptr = rx + off;

		return 0;
	}

	/* TX range */
	if (FUNC0(*ptr, len,  FUNC2(0), SPI_TEST_MAX_SIZE_PLUS)) {
		off = *ptr - FUNC2(0);
		*ptr = tx + off;

		return 0;
	}

	FUNC3(&spi->dev,
		"PointerRange [%pK:%pK[ not in range [%pK:%pK[ or [%pK:%pK[\n",
		*ptr, *ptr + len,
		FUNC1(0), FUNC1(SPI_TEST_MAX_SIZE),
		FUNC2(0), FUNC2(SPI_TEST_MAX_SIZE));

	return -EINVAL;
}