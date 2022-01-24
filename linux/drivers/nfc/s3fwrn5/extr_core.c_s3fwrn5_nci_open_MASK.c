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
struct s3fwrn5_info {int dummy; } ;
struct nci_dev {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ S3FWRN5_MODE_COLD ; 
 int /*<<< orphan*/  S3FWRN5_MODE_NCI ; 
 struct s3fwrn5_info* FUNC0 (struct nci_dev*) ; 
 scalar_t__ FUNC1 (struct s3fwrn5_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct s3fwrn5_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct s3fwrn5_info*,int) ; 

__attribute__((used)) static int FUNC4(struct nci_dev *ndev)
{
	struct s3fwrn5_info *info = FUNC0(ndev);

	if (FUNC1(info) != S3FWRN5_MODE_COLD)
		return  -EBUSY;

	FUNC2(info, S3FWRN5_MODE_NCI);
	FUNC3(info, true);

	return 0;
}