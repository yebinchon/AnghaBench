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
 scalar_t__ PCI173X_INT_CLR_REG ; 
 scalar_t__ PCI173X_INT_EN_REG ; 
 scalar_t__ PCI173X_INT_RF_REG ; 
 scalar_t__ PCI1750_INT_REG ; 
 scalar_t__ PCI1752_CFC_REG ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ PCI1761_INT_CLR_REG ; 
 scalar_t__ PCI1761_INT_EN_REG ; 
 scalar_t__ PCI1761_INT_RF_REG ; 
 scalar_t__ PCI1762_INT_REG ; 
#define  TYPE_PCI1730 139 
#define  TYPE_PCI1733 138 
#define  TYPE_PCI1736 137 
#define  TYPE_PCI1739 136 
#define  TYPE_PCI1750 135 
#define  TYPE_PCI1751 134 
 unsigned long TYPE_PCI1752 ; 
#define  TYPE_PCI1753 133 
#define  TYPE_PCI1753E 132 
#define  TYPE_PCI1754 131 
#define  TYPE_PCI1756 130 
#define  TYPE_PCI1761 129 
#define  TYPE_PCI1762 128 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev, unsigned long cardtype)
{
	/* disable channel freeze function on the PCI-1752/1756 boards */
	if (cardtype == TYPE_PCI1752 || cardtype == TYPE_PCI1756)
		FUNC4(0, dev->iobase + PCI1752_CFC_REG);

	/* disable and clear interrupts */
	switch (cardtype) {
	case TYPE_PCI1730:
	case TYPE_PCI1733:
	case TYPE_PCI1736:
		FUNC3(0, dev->iobase + PCI173X_INT_EN_REG);
		FUNC3(0x0f, dev->iobase + PCI173X_INT_CLR_REG);
		FUNC3(0, dev->iobase + PCI173X_INT_RF_REG);
		break;
	case TYPE_PCI1739:
	case TYPE_PCI1750:
	case TYPE_PCI1751:
		FUNC3(0x88, dev->iobase + PCI1750_INT_REG);
		break;
	case TYPE_PCI1753:
	case TYPE_PCI1753E:
		FUNC3(0x88, dev->iobase + FUNC1(0));
		FUNC3(0x80, dev->iobase + FUNC1(1));
		FUNC3(0x80, dev->iobase + FUNC1(2));
		FUNC3(0x80, dev->iobase + FUNC1(3));
		if (cardtype == TYPE_PCI1753E) {
			FUNC3(0x88, dev->iobase + FUNC0(0));
			FUNC3(0x80, dev->iobase + FUNC0(1));
			FUNC3(0x80, dev->iobase + FUNC0(2));
			FUNC3(0x80, dev->iobase + FUNC0(3));
		}
		break;
	case TYPE_PCI1754:
	case TYPE_PCI1756:
		FUNC4(0x08, dev->iobase + FUNC2(0));
		FUNC4(0x08, dev->iobase + FUNC2(1));
		if (cardtype == TYPE_PCI1754) {
			FUNC4(0x08, dev->iobase + FUNC2(2));
			FUNC4(0x08, dev->iobase + FUNC2(3));
		}
		break;
	case TYPE_PCI1761:
		/* disable interrupts */
		FUNC3(0, dev->iobase + PCI1761_INT_EN_REG);
		/* clear interrupts */
		FUNC3(0xff, dev->iobase + PCI1761_INT_CLR_REG);
		/* set rising edge trigger */
		FUNC3(0, dev->iobase + PCI1761_INT_RF_REG);
		break;
	case TYPE_PCI1762:
		FUNC4(0x0101, dev->iobase + PCI1762_INT_REG);
		break;
	default:
		break;
	}

	return 0;
}