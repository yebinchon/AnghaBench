#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
typedef  void* u16 ;
struct pl022 {TYPE_2__* vendor; int /*<<< orphan*/  exp_fifo_level; TYPE_1__* adev; int /*<<< orphan*/  virtbase; } ;
struct TYPE_4__ {int /*<<< orphan*/  fifodepth; scalar_t__ extended_cr; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct pl022 *pl022)
{
	u32 read_cr0;
	u16 read_cr1, read_dmacr, read_sr;

	if (pl022->vendor->extended_cr)
		read_cr0 = FUNC5(FUNC0(pl022->virtbase));
	else
		read_cr0 = FUNC6(FUNC0(pl022->virtbase));
	read_cr1 = FUNC6(FUNC1(pl022->virtbase));
	read_dmacr = FUNC6(FUNC2(pl022->virtbase));
	read_sr = FUNC6(FUNC3(pl022->virtbase));

	FUNC4(&pl022->adev->dev, "spi-pl022 CR0: %x\n", read_cr0);
	FUNC4(&pl022->adev->dev, "spi-pl022 CR1: %x\n", read_cr1);
	FUNC4(&pl022->adev->dev, "spi-pl022 DMACR: %x\n", read_dmacr);
	FUNC4(&pl022->adev->dev, "spi-pl022 SR: %x\n", read_sr);
	FUNC4(&pl022->adev->dev,
			"spi-pl022 exp_fifo_level/fifodepth: %u/%d\n",
			pl022->exp_fifo_level,
			pl022->vendor->fifodepth);

}