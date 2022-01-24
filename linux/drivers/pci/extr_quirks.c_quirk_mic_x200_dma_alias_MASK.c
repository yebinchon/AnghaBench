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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *pdev)
{
	FUNC1(pdev, FUNC0(0x10, 0x0));
	FUNC1(pdev, FUNC0(0x11, 0x0));
	FUNC1(pdev, FUNC0(0x12, 0x3));
}