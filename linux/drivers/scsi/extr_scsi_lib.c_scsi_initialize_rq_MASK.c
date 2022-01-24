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
struct scsi_cmnd {scalar_t__ retries; int /*<<< orphan*/  jiffies_at_alloc; int /*<<< orphan*/  rcu; int /*<<< orphan*/  req; } ;
struct request {int dummy; } ;

/* Variables and functions */
 struct scsi_cmnd* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct request *rq)
{
	struct scsi_cmnd *cmd = FUNC0(rq);

	FUNC2(&cmd->req);
	FUNC1(&cmd->rcu);
	cmd->jiffies_at_alloc = jiffies;
	cmd->retries = 0;
}