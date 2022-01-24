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
struct pci224_private {scalar_t__ iobase1; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  pacer; struct pci224_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_10MHZ ; 
 int /*<<< orphan*/  CLK_OUTNM1 ; 
 int /*<<< orphan*/  GAT_VCC ; 
 scalar_t__ PCI224_ZCLK_SCE ; 
 scalar_t__ PCI224_ZGAT_SCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev,
				  struct comedi_subdevice *s)
{
	struct pci224_private *devpriv = dev->private;

	/*
	 * The output of timer Z2-0 will be used as the scan trigger
	 * source.
	 */
	/* Make sure Z2-0 is gated on.  */
	FUNC1(FUNC3(0, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
	/* Cascading with Z2-2. */
	/* Make sure Z2-2 is gated on.  */
	FUNC1(FUNC3(2, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
	/* Z2-2 needs 10 MHz clock. */
	FUNC1(FUNC2(2, CLK_10MHZ),
	     devpriv->iobase1 + PCI224_ZCLK_SCE);
	/* Z2-0 is clocked from Z2-2's output. */
	FUNC1(FUNC2(0, CLK_OUTNM1),
	     devpriv->iobase1 + PCI224_ZCLK_SCE);

	FUNC0(dev->pacer, 2, 0, false);
}