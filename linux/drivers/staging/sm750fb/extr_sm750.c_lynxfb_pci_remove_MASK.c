#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  vram; } ;
struct sm750_dev {int /*<<< orphan*/  pvMem; int /*<<< orphan*/  pvReg; TYPE_1__ mtrr; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_settings ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sm750_dev* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct sm750_dev*) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct sm750_dev *sm750_dev;

	sm750_dev = FUNC3(pdev);

	FUNC4(sm750_dev);
	FUNC0(sm750_dev->mtrr.vram);

	FUNC1(sm750_dev->pvReg);
	FUNC1(sm750_dev->pvMem);
	FUNC2(g_settings);
}