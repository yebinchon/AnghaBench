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
struct spi_transfer {int /*<<< orphan*/  speed_hz; } ;
struct at91_usart_spi {int /*<<< orphan*/  spi_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRGR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct at91_usart_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(struct at91_usart_spi *aus,
			      struct spi_transfer *xfer)
{
	FUNC1(aus, BRGR,
			      FUNC0(aus->spi_clk, xfer->speed_hz));
}