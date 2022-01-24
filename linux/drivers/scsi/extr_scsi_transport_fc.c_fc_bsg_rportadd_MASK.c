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
struct device {int dummy; } ;
struct fc_rport {struct request_queue* rqst_q; struct device dev; } ;
struct fc_internal {TYPE_1__* f; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; } ;
struct TYPE_2__ {int /*<<< orphan*/  dd_bsg_size; int /*<<< orphan*/  bsg_request; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_DEFAULT_SG_TIMEOUT ; 
 int ENOTSUPP ; 
 scalar_t__ FUNC0 (struct request_queue*) ; 
 int FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,int /*<<< orphan*/ ) ; 
 struct request_queue* FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  fc_bsg_dispatch_prep ; 
 int /*<<< orphan*/  fc_bsg_job_timeout ; 
 struct fc_internal* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct Scsi_Host *shost, struct fc_rport *rport)
{
	struct device *dev = &rport->dev;
	struct fc_internal *i = FUNC7(shost->transportt);
	struct request_queue *q;

	rport->rqst_q = NULL;

	if (!i->f->bsg_request)
		return -ENOTSUPP;

	q = FUNC4(dev, FUNC6(dev), fc_bsg_dispatch_prep,
				fc_bsg_job_timeout, i->f->dd_bsg_size);
	if (FUNC0(q)) {
		FUNC5(dev, "failed to setup bsg queue\n");
		return FUNC1(q);
	}
	FUNC2(shost, q);
	FUNC3(q, BLK_DEFAULT_SG_TIMEOUT);
	rport->rqst_q = q;
	return 0;
}