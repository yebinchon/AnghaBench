#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stm32_spi {TYPE_3__* cfg; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {TYPE_2__* regs; } ;
struct TYPE_4__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  reg; } ;
struct TYPE_5__ {TYPE_1__ en; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct stm32_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct stm32_spi *spi)
{
	FUNC0(spi->dev, "enable controller\n");

	FUNC1(spi, spi->cfg->regs->en.reg,
			   spi->cfg->regs->en.mask);
}