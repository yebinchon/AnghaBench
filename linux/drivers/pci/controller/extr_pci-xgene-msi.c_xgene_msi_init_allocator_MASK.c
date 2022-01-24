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
struct xgene_msi_group {int dummy; } ;
struct xgene_msi {int /*<<< orphan*/  msi_groups; int /*<<< orphan*/  bitmap_lock; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NR_HW_IRQS ; 
 int /*<<< orphan*/  NR_MSI_VEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct xgene_msi *xgene_msi)
{
	int size = FUNC0(NR_MSI_VEC) * sizeof(long);

	xgene_msi->bitmap = FUNC2(size, GFP_KERNEL);
	if (!xgene_msi->bitmap)
		return -ENOMEM;

	FUNC3(&xgene_msi->bitmap_lock);

	xgene_msi->msi_groups = FUNC1(NR_HW_IRQS,
					sizeof(struct xgene_msi_group),
					GFP_KERNEL);
	if (!xgene_msi->msi_groups)
		return -ENOMEM;

	return 0;
}