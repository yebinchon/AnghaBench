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
 int /*<<< orphan*/  S3FWRN5_MODE_COLD ; 
 int /*<<< orphan*/  FUNC0 (struct nci_dev*) ; 
 struct s3fwrn5_info* FUNC1 (struct nci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct nci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct s3fwrn5_info*,int /*<<< orphan*/ ) ; 

void FUNC4(struct nci_dev *ndev)
{
	struct s3fwrn5_info *info = FUNC1(ndev);

	FUNC3(info, S3FWRN5_MODE_COLD);

	FUNC2(ndev);
	FUNC0(ndev);
}