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
typedef  int /*<<< orphan*/  u64 ;
struct comedi_device {int /*<<< orphan*/  pacer; scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ PCI230_ZCLK_SCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev, unsigned int ct,
				    unsigned int mode, u64 ns,
				    unsigned int flags)
{
	unsigned int clk_src;
	unsigned int count;

	/* Set mode. */
	FUNC0(dev->pacer, ct, mode);
	/* Determine clock source and count. */
	clk_src = FUNC3(ns, &count, flags);
	/* Program clock source. */
	FUNC2(FUNC4(ct, clk_src), dev->iobase + PCI230_ZCLK_SCE);
	/* Set initial count. */
	if (count >= 65536)
		count = 0;

	FUNC1(dev->pacer, ct, count);
}