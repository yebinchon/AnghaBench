#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  line; } ;
struct lpss8250 {TYPE_2__* board; TYPE_1__ data; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* exit ) (struct lpss8250*) ;} ;

/* Variables and functions */
 struct lpss8250* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpss8250*) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev)
{
	struct lpss8250 *lpss = FUNC0(pdev);

	FUNC1(lpss->data.line);

	if (lpss->board->exit)
		lpss->board->exit(lpss);
}