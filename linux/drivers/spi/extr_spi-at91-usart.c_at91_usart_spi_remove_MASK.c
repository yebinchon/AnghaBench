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
struct spi_controller {int dummy; } ;
struct platform_device {int dummy; } ;
struct at91_usart_spi {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct spi_controller* FUNC2 (struct platform_device*) ; 
 struct at91_usart_spi* FUNC3 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct spi_controller *ctlr = FUNC2(pdev);
	struct at91_usart_spi *aus = FUNC3(ctlr);

	FUNC0(ctlr);
	FUNC1(aus->clk);

	return 0;
}