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
struct comedi_device {scalar_t__ mmio; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ NI_65XX_FILTER_REG ; 
 unsigned int FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev)
{
	unsigned int num_ports = FUNC1(dev);
	int i;

	/* disable input filtering on all ports */
	for (i = 0; i < num_ports; ++i)
		FUNC2(0x00, dev->mmio + FUNC0(i));

	/* set filter interval to 0 (32bit reg) */
	FUNC3(0x00000000, dev->mmio + NI_65XX_FILTER_REG);
}