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
struct spi_qup {int /*<<< orphan*/  w_size; scalar_t__ rx_bytes; scalar_t__ tx_bytes; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct spi_qup*) ; 

__attribute__((used)) static bool FUNC2(struct spi_qup *controller)
{
	unsigned int remainder_tx, remainder_rx;

	remainder_tx = FUNC0(FUNC1(controller) -
				    controller->tx_bytes, controller->w_size);

	remainder_rx = FUNC0(FUNC1(controller) -
				    controller->rx_bytes, controller->w_size);

	return remainder_tx || remainder_rx;
}