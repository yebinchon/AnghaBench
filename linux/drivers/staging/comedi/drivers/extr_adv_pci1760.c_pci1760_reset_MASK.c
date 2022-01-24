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
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI1760_CMD_ENA_CNT ; 
 int /*<<< orphan*/  PCI1760_CMD_ENA_CNT_MATCH ; 
 int /*<<< orphan*/  PCI1760_CMD_ENA_CNT_OFLOW ; 
 int /*<<< orphan*/  PCI1760_CMD_ENA_FILT ; 
 int /*<<< orphan*/  PCI1760_CMD_ENA_PAT_MATCH ; 
 int /*<<< orphan*/  PCI1760_CMD_RST_CNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PCI1760_CMD_SET_CNT_EDGE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  PCI1760_CMD_SET_PAT_MATCH ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev)
{
	int i;

	/* disable interrupts (intcsr2 is read-only) */
	FUNC3(0, dev->iobase + FUNC2(0));
	FUNC3(0, dev->iobase + FUNC2(1));
	FUNC3(0, dev->iobase + FUNC2(3));

	/* disable counters */
	FUNC4(dev, PCI1760_CMD_ENA_CNT, 0);

	/* disable overflow interrupts */
	FUNC4(dev, PCI1760_CMD_ENA_CNT_OFLOW, 0);

	/* disable match */
	FUNC4(dev, PCI1760_CMD_ENA_CNT_MATCH, 0);

	/* set match and counter reset values */
	for (i = 0; i < 8; i++) {
		FUNC4(dev, FUNC1(i), 0x8000);
		FUNC4(dev, FUNC0(i), 0x0000);
	}

	/* reset counters to reset values */
	FUNC4(dev, PCI1760_CMD_RST_CNT, 0xff);

	/* set counter count edges */
	FUNC4(dev, PCI1760_CMD_SET_CNT_EDGE, 0);

	/* disable input filters */
	FUNC4(dev, PCI1760_CMD_ENA_FILT, 0);

	/* disable pattern matching */
	FUNC4(dev, PCI1760_CMD_ENA_PAT_MATCH, 0);

	/* set pattern match value */
	FUNC4(dev, PCI1760_CMD_SET_PAT_MATCH, 0);
}