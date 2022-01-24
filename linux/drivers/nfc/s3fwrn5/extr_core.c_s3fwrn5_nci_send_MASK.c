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
struct sk_buff {int dummy; } ;
struct s3fwrn5_info {int /*<<< orphan*/  mutex; } ;
struct nci_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ S3FWRN5_MODE_NCI ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct s3fwrn5_info* FUNC3 (struct nci_dev*) ; 
 scalar_t__ FUNC4 (struct s3fwrn5_info*) ; 
 int FUNC5 (struct s3fwrn5_info*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct nci_dev *ndev, struct sk_buff *skb)
{
	struct s3fwrn5_info *info = FUNC3(ndev);
	int ret;

	FUNC1(&info->mutex);

	if (FUNC4(info) != S3FWRN5_MODE_NCI) {
		FUNC2(&info->mutex);
		return -EINVAL;
	}

	ret = FUNC5(info, skb);
	if (ret < 0)
		FUNC0(skb);

	FUNC2(&info->mutex);
	return ret;
}