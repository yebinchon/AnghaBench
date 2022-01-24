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
struct xgene_msi {int /*<<< orphan*/  inner_domain; int /*<<< orphan*/  msi_domain; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NR_MSI_VEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct xgene_msi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msi_domain_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xgene_msi_domain_info ; 

__attribute__((used)) static int FUNC4(struct xgene_msi *msi)
{
	msi->inner_domain = FUNC0(NULL, NR_MSI_VEC,
						  &msi_domain_ops, msi);
	if (!msi->inner_domain)
		return -ENOMEM;

	msi->msi_domain = FUNC3(FUNC2(msi->node),
						    &xgene_msi_domain_info,
						    msi->inner_domain);

	if (!msi->msi_domain) {
		FUNC1(msi->inner_domain);
		return -ENOMEM;
	}

	return 0;
}