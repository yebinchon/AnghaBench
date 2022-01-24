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
struct pci_dev {int dummy; } ;
struct exar8250 {unsigned int nr; TYPE_1__* board; int /*<<< orphan*/ * line; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* exit ) (struct pci_dev*) ;} ;

/* Variables and functions */
 struct exar8250* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pcidev)
{
	struct exar8250 *priv = FUNC0(pcidev);
	unsigned int i;

	for (i = 0; i < priv->nr; i++)
		FUNC1(priv->line[i]);

	if (priv->board->exit)
		priv->board->exit(pcidev);
}