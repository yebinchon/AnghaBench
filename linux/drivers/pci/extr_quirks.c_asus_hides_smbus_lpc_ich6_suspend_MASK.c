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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  asus_hides_smbus ; 
 int /*<<< orphan*/ * asus_rcba_base ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	u32 rcba;

	if (FUNC2(!asus_hides_smbus))
		return;
	FUNC0(asus_rcba_base);

	FUNC3(dev, 0xF0, &rcba);
	/* use bits 31:14, 16 kB aligned */
	asus_rcba_base = FUNC1(rcba & 0xFFFFC000, 0x4000);
	if (asus_rcba_base == NULL)
		return;
}