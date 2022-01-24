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
struct ufs_hba {int /*<<< orphan*/  clk_list_head; int /*<<< orphan*/  dev_ref_clk_freq; struct device* dev; struct Scsi_Host* host; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REF_CLK_FREQ_INVAL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct Scsi_Host* FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct ufs_hba* FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  ufshcd_driver_template ; 

int FUNC4(struct device *dev, struct ufs_hba **hba_handle)
{
	struct Scsi_Host *host;
	struct ufs_hba *hba;
	int err = 0;

	if (!dev) {
		FUNC1(dev,
		"Invalid memory reference for dev is NULL\n");
		err = -ENODEV;
		goto out_error;
	}

	host = FUNC2(&ufshcd_driver_template,
				sizeof(struct ufs_hba));
	if (!host) {
		FUNC1(dev, "scsi_host_alloc failed\n");
		err = -ENOMEM;
		goto out_error;
	}
	hba = FUNC3(host);
	hba->host = host;
	hba->dev = dev;
	*hba_handle = hba;
	hba->dev_ref_clk_freq = REF_CLK_FREQ_INVAL;

	FUNC0(&hba->clk_list_head);

out_error:
	return err;
}