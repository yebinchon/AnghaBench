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
struct wd719x {int /*<<< orphan*/  base; } ;
struct pci_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct Scsi_Host* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 
 struct wd719x* FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC7 (struct wd719x*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct Scsi_Host *sh = FUNC1(pdev);
	struct wd719x *wd = FUNC6(sh);

	FUNC5(sh);
	FUNC7(wd);
	FUNC2(pdev, wd->base);
	FUNC3(pdev);
	FUNC0(pdev);

	FUNC4(sh);
}