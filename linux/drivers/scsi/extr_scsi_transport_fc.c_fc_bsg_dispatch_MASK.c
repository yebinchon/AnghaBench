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
struct bsg_job {int /*<<< orphan*/  dev; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct Scsi_Host*,struct bsg_job*) ; 
 int FUNC1 (struct Scsi_Host*,struct bsg_job*) ; 
 struct Scsi_Host* FUNC2 (struct bsg_job*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct bsg_job *job)
{
	struct Scsi_Host *shost = FUNC2(job);

	if (FUNC3(job->dev))
		return FUNC1(shost, job);
	else
		return FUNC0(shost, job);
}