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
struct s3fwrn5_info {int /*<<< orphan*/  ndev; } ;
struct nci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3FWRN5_MODE_NCI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct s3fwrn5_info* FUNC2 (struct nci_dev*) ; 
 int FUNC3 (struct s3fwrn5_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct s3fwrn5_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct s3fwrn5_info*,int) ; 

__attribute__((used)) static int FUNC6(struct nci_dev *ndev)
{
	struct s3fwrn5_info *info = FUNC2(ndev);
	int ret;

	ret = FUNC3(info);
	if (ret < 0)
		goto out;

	/* NCI core reset */

	FUNC4(info, S3FWRN5_MODE_NCI);
	FUNC5(info, true);

	ret = FUNC1(info->ndev);
	if (ret < 0)
		goto out;

	ret = FUNC0(info->ndev);

out:
	return ret;
}