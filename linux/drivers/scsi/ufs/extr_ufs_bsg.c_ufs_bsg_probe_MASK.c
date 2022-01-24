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
struct device {int /*<<< orphan*/  release; int /*<<< orphan*/  parent; } ;
struct ufs_hba {struct request_queue* bsg_queue; struct Scsi_Host* host; struct device bsg_dev; } ;
struct request_queue {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_no; struct device shost_gendev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct request_queue*) ; 
 int FUNC1 (struct request_queue*) ; 
 struct request_queue* FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  ufs_bsg_node_release ; 
 int /*<<< orphan*/  ufs_bsg_request ; 

int FUNC10(struct ufs_hba *hba)
{
	struct device *bsg_dev = &hba->bsg_dev;
	struct Scsi_Host *shost = hba->host;
	struct device *parent = &shost->shost_gendev;
	struct request_queue *q;
	int ret;

	FUNC7(bsg_dev);

	bsg_dev->parent = FUNC8(parent);
	bsg_dev->release = ufs_bsg_node_release;

	FUNC5(bsg_dev, "ufs-bsg");

	ret = FUNC6(bsg_dev);
	if (ret)
		goto out;

	q = FUNC2(bsg_dev, FUNC4(bsg_dev), ufs_bsg_request, NULL, 0);
	if (FUNC0(q)) {
		ret = FUNC1(q);
		goto out;
	}

	hba->bsg_queue = q;

	return 0;

out:
	FUNC3(bsg_dev, "fail to initialize a bsg dev %d\n", shost->host_no);
	FUNC9(bsg_dev);
	return ret;
}