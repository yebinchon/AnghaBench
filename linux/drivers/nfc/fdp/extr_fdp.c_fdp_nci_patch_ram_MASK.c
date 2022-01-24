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
struct nci_dev {int dummy; } ;
struct fdp_nci_info {scalar_t__ ram_version; scalar_t__ ram_patch_version; int setup_patch_sent; int setup_reset_ntf; int setup_patch_ntf; int setup_patch_status; int /*<<< orphan*/  setup_wq; int /*<<< orphan*/  ndev; TYPE_2__* phy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* i2c_dev; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FDP_FW_UPDATE_SLEEP ; 
 int /*<<< orphan*/  NCI_PATCH_TYPE_EOT ; 
 int /*<<< orphan*/  NCI_PATCH_TYPE_RAM ; 
 int FUNC0 (struct nci_dev*) ; 
 int FUNC1 (struct nci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct fdp_nci_info* FUNC5 (struct nci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct nci_dev *ndev)
{
	struct fdp_nci_info *info = FUNC5(ndev);
	struct device *dev = &info->phy->i2c_dev->dev;
	int conn_id;
	int r = 0;

	if (info->ram_version >= info->ram_patch_version)
		goto out;

	info->setup_patch_sent = 0;
	info->setup_reset_ntf = 0;
	info->setup_patch_ntf = 0;

	/* Patch init request */
	r = FUNC1(ndev, NCI_PATCH_TYPE_RAM);
	if (r)
		goto out;

	/* Patch data connection creation */
	conn_id = FUNC0(ndev);
	if (conn_id < 0) {
		r = conn_id;
		goto out;
	}

	/* Send the patch over the data connection */
	r = FUNC2(ndev, conn_id, NCI_PATCH_TYPE_RAM);
	if (r)
		goto out;

	/* Wait for all the packets to be send over i2c */
	FUNC7(info->setup_wq,
				 info->setup_patch_sent == 1);

	/* make sure that the NFCC processed the last data packet */
	FUNC3(FDP_FW_UPDATE_SLEEP);

	/* Close the data connection */
	r = FUNC4(info->ndev, conn_id);
	if (r)
		goto out;

	/* Patch finish message */
	if (FUNC1(ndev, NCI_PATCH_TYPE_EOT)) {
		FUNC6(dev, "RAM patch error 0x%x\n", r);
		r = -EINVAL;
		goto out;
	}

	/* If the patch notification didn't arrive yet, wait for it */
	FUNC7(info->setup_wq, info->setup_patch_ntf);

	/* Check if the patching was successful */
	r = info->setup_patch_status;
	if (r) {
		FUNC6(dev, "RAM patch error 0x%x\n", r);
		r = -EINVAL;
		goto out;
	}

	/*
	 * We need to wait for the reset notification before we
	 * can continue
	 */
	FUNC7(info->setup_wq, info->setup_reset_ntf);

out:
	return r;
}