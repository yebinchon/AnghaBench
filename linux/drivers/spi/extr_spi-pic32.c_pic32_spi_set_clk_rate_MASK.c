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
typedef  int u32 ;
struct pic32_spi {TYPE_1__* regs; int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  baud; } ;

/* Variables and functions */
 int BAUD_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct pic32_spi *pic32s, u32 spi_ck)
{
	u32 div;

	/* div = (clk_in / 2 * spi_ck) - 1 */
	div = FUNC0(FUNC1(pic32s->clk), 2 * spi_ck) - 1;

	FUNC2(div & BAUD_MASK, &pic32s->regs->baud);
}