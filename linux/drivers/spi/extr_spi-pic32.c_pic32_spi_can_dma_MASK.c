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
struct spi_transfer {scalar_t__ len; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;
struct pic32_spi {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIC32F_DMA_PREP ; 
 scalar_t__ PIC32_DMA_LEN_MIN ; 
 struct pic32_spi* FUNC0 (struct spi_master*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct spi_master *master,
			      struct spi_device *spi,
			      struct spi_transfer *xfer)
{
	struct pic32_spi *pic32s = FUNC0(master);

	/* skip using DMA on small size transfer to avoid overhead.*/
	return (xfer->len >= PIC32_DMA_LEN_MIN) &&
	       FUNC1(PIC32F_DMA_PREP, &pic32s->flags);
}