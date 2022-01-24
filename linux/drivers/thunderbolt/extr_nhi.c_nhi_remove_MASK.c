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
struct tb_nhi {int dummy; } ;
struct tb {struct tb_nhi* nhi; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tb_nhi*) ; 
 struct tb* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tb*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct tb *tb = FUNC1(pdev);
	struct tb_nhi *nhi = tb->nhi;

	FUNC4(&pdev->dev);
	FUNC2(&pdev->dev);
	FUNC3(&pdev->dev);

	FUNC5(tb);
	FUNC0(nhi);
}