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
struct smtcfb_info {int /*<<< orphan*/  fb; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct smtcfb_info* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct smtcfb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct smtcfb_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct smtcfb_info *sfb;

	sfb = FUNC2(pdev);
	FUNC5(sfb);
	FUNC4(sfb);
	FUNC6(sfb->fb);
	FUNC0(sfb->fb);
	FUNC3(pdev, 0);
	FUNC1(pdev);
}