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
struct pci_dev {int /*<<< orphan*/ * saved_config_space; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC1(struct pci_dev *pdev,
					   int start, int end, int retry,
					   bool force)
{
	int index;

	for (index = end; index >= start; index--)
		FUNC0(pdev, 4 * index,
					 pdev->saved_config_space[index],
					 retry, force);
}