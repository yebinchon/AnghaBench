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
struct uart_port {int dummy; } ;
struct s3c24xx_uart_info {int num_clks; unsigned int clksel_mask; unsigned int clksel_shift; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C2410_UCON ; 
 unsigned int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 struct s3c24xx_uart_info* FUNC1 (struct uart_port*) ; 

__attribute__((used)) static inline int FUNC2(struct uart_port *port)
{
	struct s3c24xx_uart_info *info = FUNC1(port);
	unsigned int ucon;

	if (info->num_clks == 1)
		return 0;

	ucon = FUNC0(port, S3C2410_UCON);
	ucon &= info->clksel_mask;
	return ucon >> info->clksel_shift;
}