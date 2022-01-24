#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct s3fwrn5_phy_ops {int dummy; } ;
struct TYPE_4__ {struct nci_dev* ndev; } ;
struct s3fwrn5_info {unsigned int max_payload; struct nci_dev* ndev; TYPE_1__ fw_info; int /*<<< orphan*/  mutex; struct s3fwrn5_phy_ops const* phy_ops; struct device* pdev; void* phy_id; } ;
struct nci_dev {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  n_prop_ops; int /*<<< orphan*/  prop_ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  S3FWRN5_MODE_COLD ; 
 int /*<<< orphan*/  S3FWRN5_NFC_PROTOCOLS ; 
 struct s3fwrn5_info* FUNC0 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nci_dev* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nci_dev*) ; 
 int FUNC4 (struct nci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct nci_dev*,struct s3fwrn5_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct nci_dev*,struct device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__ s3fwrn5_nci_ops ; 
 int /*<<< orphan*/  FUNC8 (struct s3fwrn5_info*,int /*<<< orphan*/ ) ; 

int FUNC9(struct nci_dev **ndev, void *phy_id, struct device *pdev,
	const struct s3fwrn5_phy_ops *phy_ops, unsigned int max_payload)
{
	struct s3fwrn5_info *info;
	int ret;

	info = FUNC0(pdev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->phy_id = phy_id;
	info->pdev = pdev;
	info->phy_ops = phy_ops;
	info->max_payload = max_payload;
	FUNC1(&info->mutex);

	FUNC8(info, S3FWRN5_MODE_COLD);

	FUNC7(&s3fwrn5_nci_ops.prop_ops,
		&s3fwrn5_nci_ops.n_prop_ops);

	info->ndev = FUNC2(&s3fwrn5_nci_ops,
		S3FWRN5_NFC_PROTOCOLS, 0, 0);
	if (!info->ndev)
		return -ENOMEM;

	FUNC6(info->ndev, pdev);
	FUNC5(info->ndev, info);

	ret = FUNC4(info->ndev);
	if (ret < 0) {
		FUNC3(info->ndev);
		return ret;
	}

	info->fw_info.ndev = info->ndev;

	*ndev = info->ndev;

	return ret;
}