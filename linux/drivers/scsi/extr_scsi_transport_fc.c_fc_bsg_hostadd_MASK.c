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
struct fc_internal {TYPE_1__* f; } ;
struct fc_host_attrs {struct request_queue* rqst_q; } ;
struct device {int dummy; } ;
struct Scsi_Host {int host_no; int /*<<< orphan*/  transportt; struct device shost_gendev; } ;
typedef  int /*<<< orphan*/  bsg_name ;
struct TYPE_2__ {int /*<<< orphan*/  dd_bsg_size; int /*<<< orphan*/  bsg_request; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  FC_DEFAULT_BSG_TIMEOUT ; 
 scalar_t__ FUNC0 (struct request_queue*) ; 
 int FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,int /*<<< orphan*/ ) ; 
 struct request_queue* FUNC4 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 int /*<<< orphan*/  fc_bsg_dispatch ; 
 int /*<<< orphan*/  fc_bsg_job_timeout ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 struct fc_internal* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct Scsi_Host *shost, struct fc_host_attrs *fc_host)
{
	struct device *dev = &shost->shost_gendev;
	struct fc_internal *i = FUNC7(shost->transportt);
	struct request_queue *q;
	char bsg_name[20];

	fc_host->rqst_q = NULL;

	if (!i->f->bsg_request)
		return -ENOTSUPP;

	FUNC6(bsg_name, sizeof(bsg_name),
		 "fc_host%d", shost->host_no);

	q = FUNC4(dev, bsg_name, fc_bsg_dispatch, fc_bsg_job_timeout,
				i->f->dd_bsg_size);
	if (FUNC0(q)) {
		FUNC5(dev,
			"fc_host%d: bsg interface failed to initialize - setup queue\n",
			shost->host_no);
		return FUNC1(q);
	}
	FUNC2(shost, q);
	FUNC3(q, FC_DEFAULT_BSG_TIMEOUT);
	fc_host->rqst_q = q;
	return 0;
}