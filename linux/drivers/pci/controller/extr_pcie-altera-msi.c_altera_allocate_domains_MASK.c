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
struct fwnode_handle {int dummy; } ;
struct altera_msi {int /*<<< orphan*/  inner_domain; TYPE_1__* pdev; int /*<<< orphan*/  msi_domain; int /*<<< orphan*/  num_of_vectors; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  altera_msi_domain_info ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct altera_msi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msi_domain_ops ; 
 struct fwnode_handle* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fwnode_handle*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct altera_msi *msi)
{
	struct fwnode_handle *fwnode = FUNC3(msi->pdev->dev.of_node);

	msi->inner_domain = FUNC1(NULL, msi->num_of_vectors,
					     &msi_domain_ops, msi);
	if (!msi->inner_domain) {
		FUNC0(&msi->pdev->dev, "failed to create IRQ domain\n");
		return -ENOMEM;
	}

	msi->msi_domain = FUNC4(fwnode,
				&altera_msi_domain_info, msi->inner_domain);
	if (!msi->msi_domain) {
		FUNC0(&msi->pdev->dev, "failed to create MSI domain\n");
		FUNC2(msi->inner_domain);
		return -ENOMEM;
	}

	return 0;
}