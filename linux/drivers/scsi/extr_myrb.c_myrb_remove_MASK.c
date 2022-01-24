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
struct myrb_hba {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_NOTICE ; 
 int /*<<< orphan*/  MYRB_CMD_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct myrb_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct myrb_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct myrb_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct myrb_hba* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct myrb_hba *cb = FUNC3(pdev);

	FUNC4(KERN_NOTICE, cb->host, "Flushing Cache...");
	FUNC2(cb, MYRB_CMD_FLUSH, 0);
	FUNC0(cb);
	FUNC1(cb);
}