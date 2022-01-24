#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sirfsoc_spi {TYPE_1__* regs; scalar_t__ base; } ;
struct TYPE_2__ {scalar_t__ usp_mode1; } ;

/* Variables and functions */
 int SIRFSOC_USP_EN ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct sirfsoc_spi *sspi)
{
	/* reset USP and let USP can operate */
	FUNC1(FUNC0(sspi->base + sspi->regs->usp_mode1) &
		~SIRFSOC_USP_EN, sspi->base + sspi->regs->usp_mode1);
	FUNC1(FUNC0(sspi->base + sspi->regs->usp_mode1) |
		SIRFSOC_USP_EN, sspi->base + sspi->regs->usp_mode1);
}