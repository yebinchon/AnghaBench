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
struct spi_st {int /*<<< orphan*/  done; scalar_t__ base; scalar_t__ words_remaining; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ SSC_IEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_st*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_st*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct spi_st *spi_st = (struct spi_st *)dev_id;

	/* Read RX FIFO */
	FUNC2(spi_st);

	/* Fill TX FIFO */
	if (spi_st->words_remaining) {
		FUNC3(spi_st);
	} else {
		/* TX/RX complete */
		FUNC4(0x0, spi_st->base + SSC_IEN);
		/*
		 * read SSC_IEN to ensure that this bit is set
		 * before re-enabling interrupt
		 */
		FUNC1(spi_st->base + SSC_IEN);
		FUNC0(&spi_st->done);
	}

	return IRQ_HANDLED;
}