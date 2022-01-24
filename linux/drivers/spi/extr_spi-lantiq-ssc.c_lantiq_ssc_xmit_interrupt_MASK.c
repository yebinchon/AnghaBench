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
struct lantiq_ssc_spi {int /*<<< orphan*/  work; int /*<<< orphan*/  wq; scalar_t__ rx_todo; scalar_t__ rx; scalar_t__ tx_todo; scalar_t__ tx; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lantiq_ssc_spi*) ; 
 int /*<<< orphan*/  FUNC2 (struct lantiq_ssc_spi*) ; 
 int /*<<< orphan*/  FUNC3 (struct lantiq_ssc_spi*) ; 
 int /*<<< orphan*/  FUNC4 (struct lantiq_ssc_spi*) ; 
 int /*<<< orphan*/  FUNC5 (struct lantiq_ssc_spi*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct lantiq_ssc_spi *spi = data;

	if (spi->tx) {
		if (spi->rx && spi->rx_todo)
			FUNC1(spi);

		if (spi->tx_todo)
			FUNC5(spi);
		else if (!FUNC4(spi))
			goto completed;
	} else if (spi->rx) {
		if (spi->rx_todo) {
			FUNC2(spi);

			if (spi->rx_todo)
				FUNC3(spi);
			else
				goto completed;
		} else {
			goto completed;
		}
	}

	return IRQ_HANDLED;

completed:
	FUNC0(spi->wq, &spi->work);

	return IRQ_HANDLED;
}