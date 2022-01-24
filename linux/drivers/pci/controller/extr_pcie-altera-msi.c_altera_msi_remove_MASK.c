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
struct platform_device {int dummy; } ;
struct altera_msi {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSI_INTMASK ; 
 int /*<<< orphan*/  FUNC0 (struct altera_msi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct altera_msi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct altera_msi* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct altera_msi *msi = FUNC4(pdev);

	FUNC3(msi, 0, MSI_INTMASK);
	FUNC1(msi->irq, NULL);
	FUNC2(msi->irq, NULL);

	FUNC0(msi);

	FUNC5(pdev, NULL);
	return 0;
}