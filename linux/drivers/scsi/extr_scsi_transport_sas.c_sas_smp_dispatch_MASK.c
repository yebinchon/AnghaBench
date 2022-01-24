#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sas_rphy {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  payload_len; } ;
struct bsg_job {int /*<<< orphan*/  dev; TYPE_2__ reply_payload; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; } ;
struct TYPE_6__ {TYPE_1__* f; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* smp_handler ) (struct bsg_job*,struct Scsi_Host*,struct sas_rphy*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct bsg_job*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sas_rphy* FUNC1 (int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bsg_job*,struct Scsi_Host*,struct sas_rphy*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct bsg_job *job)
{
	struct Scsi_Host *shost = FUNC2(job->dev);
	struct sas_rphy *rphy = NULL;

	if (!FUNC4(job->dev))
		rphy = FUNC1(job->dev);

	if (!job->reply_payload.payload_len) {
		FUNC3(job->dev, "space for a smp response is missing\n");
		FUNC0(job, -EINVAL, 0);
		return 0;
	}

	FUNC6(shost->transportt)->f->smp_handler(job, shost, rphy);
	return 0;
}