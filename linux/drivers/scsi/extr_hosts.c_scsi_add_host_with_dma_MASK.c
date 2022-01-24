#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_host_template {int /*<<< orphan*/  name; int /*<<< orphan*/  (* info ) (struct Scsi_Host*) ;} ;
struct device {struct device* parent; } ;
struct Scsi_Host {int host_no; struct device shost_gendev; struct device shost_dev; int /*<<< orphan*/ * shost_data; scalar_t__ work_q; int /*<<< orphan*/  work_q_name; TYPE_1__* transportt; struct device* dma_dev; int /*<<< orphan*/  can_queue; struct scsi_host_template* hostt; } ;
struct TYPE_2__ {scalar_t__ create_work_queue; scalar_t__ host_size; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  SHOST_RUNNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct device platform_bus ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC16 (struct Scsi_Host*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC18 (struct Scsi_Host*) ; 
 int FUNC19 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC20 (struct Scsi_Host*) ; 
 int FUNC21 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,struct Scsi_Host*,char*,...) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct Scsi_Host*) ; 

int FUNC25(struct Scsi_Host *shost, struct device *dev,
			   struct device *dma_dev)
{
	struct scsi_host_template *sht = shost->hostt;
	int error = -EINVAL;

	FUNC22(KERN_INFO, shost, "%s\n",
			sht->info ? sht->info(shost) : sht->name);

	if (!shost->can_queue) {
		FUNC22(KERN_ERR, shost,
			     "can_queue = 0 no longer supported\n");
		goto fail;
	}

	error = FUNC17(shost);
	if (error)
		goto fail;

	error = FUNC19(shost);
	if (error)
		goto fail;

	if (!shost->shost_gendev.parent)
		shost->shost_gendev.parent = dev ? dev : &platform_bus;
	if (!dma_dev)
		dma_dev = shost->shost_gendev.parent;

	shost->dma_dev = dma_dev;

	/*
	 * Increase usage count temporarily here so that calling
	 * scsi_autopm_put_host() will trigger runtime idle if there is
	 * nothing else preventing suspending the device.
	 */
	FUNC11(&shost->shost_gendev);
	FUNC13(&shost->shost_gendev);
	FUNC10(&shost->shost_gendev);
	FUNC5(&shost->shost_gendev);

	error = FUNC2(&shost->shost_gendev);
	if (error)
		goto out_disable_runtime_pm;

	FUNC16(shost, SHOST_RUNNING);
	FUNC6(shost->shost_gendev.parent);

	FUNC5(&shost->shost_dev);

	error = FUNC2(&shost->shost_dev);
	if (error)
		goto out_del_gendev;

	FUNC6(&shost->shost_gendev);

	if (shost->transportt->host_size) {
		shost->shost_data = FUNC8(shost->transportt->host_size,
					 GFP_KERNEL);
		if (shost->shost_data == NULL) {
			error = -ENOMEM;
			goto out_del_dev;
		}
	}

	if (shost->transportt->create_work_queue) {
		FUNC23(shost->work_q_name, sizeof(shost->work_q_name),
			 "scsi_wq_%d", shost->host_no);
		shost->work_q = FUNC0(
					shost->work_q_name);
		if (!shost->work_q) {
			error = -EINVAL;
			goto out_free_shost_data;
		}
	}

	error = FUNC21(shost);
	if (error)
		goto out_destroy_host;

	FUNC20(shost);
	FUNC15(shost);
	return error;

 out_destroy_host:
	if (shost->work_q)
		FUNC1(shost->work_q);
 out_free_shost_data:
	FUNC7(shost->shost_data);
 out_del_dev:
	FUNC3(&shost->shost_dev);
 out_del_gendev:
	FUNC3(&shost->shost_gendev);
 out_disable_runtime_pm:
	FUNC4(&shost->shost_gendev);
	FUNC9(&shost->shost_gendev);
	FUNC14(&shost->shost_gendev);
	FUNC12(&shost->shost_gendev);
	FUNC18(shost);
 fail:
	return error;
}