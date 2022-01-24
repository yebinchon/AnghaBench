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
struct request_queue {int dummy; } ;
struct iscsi_internal {TYPE_1__* iscsi_transport; } ;
struct iscsi_cls_host {struct request_queue* bsg_q; } ;
struct device {int dummy; } ;
struct Scsi_Host {int host_no; int /*<<< orphan*/  transportt; struct device shost_gendev; } ;
typedef  int /*<<< orphan*/  bsg_name ;
struct TYPE_2__ {int /*<<< orphan*/  bsg_request; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 scalar_t__ FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*,struct request_queue*) ; 
 struct request_queue* FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iscsi_bsg_host_dispatch ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct Scsi_Host*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 struct iscsi_internal* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct Scsi_Host *shost, struct iscsi_cls_host *ihost)
{
	struct device *dev = &shost->shost_gendev;
	struct iscsi_internal *i = FUNC6(shost->transportt);
	struct request_queue *q;
	char bsg_name[20];

	if (!i->iscsi_transport->bsg_request)
		return -ENOTSUPP;

	FUNC5(bsg_name, sizeof(bsg_name), "iscsi_host%d", shost->host_no);
	q = FUNC3(dev, bsg_name, iscsi_bsg_host_dispatch, NULL, 0);
	if (FUNC0(q)) {
		FUNC4(KERN_ERR, shost, "bsg interface failed to "
			     "initialize - no request queue\n");
		return FUNC1(q);
	}
	FUNC2(shost, q);

	ihost->bsg_q = q;
	return 0;
}