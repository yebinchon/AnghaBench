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
typedef  int u32 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ITE_887x_IOSIZE ; 
 int /*<<< orphan*/  ITE_887x_POSIO0 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	u32 ioport;
	/* the ioport is bit 0-15 in POSIO0R */
	FUNC0(dev, ITE_887x_POSIO0, &ioport);
	ioport &= 0xffff;
	FUNC1(ioport, ITE_887x_IOSIZE);
}