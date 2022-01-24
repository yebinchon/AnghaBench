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
struct Scsi_Host {int eh_deadline; int /*<<< orphan*/  host_lock; scalar_t__ last_reset; int /*<<< orphan*/  eh_cmd_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eh_done_q ; 
 int /*<<< orphan*/  eh_work_q ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct Scsi_Host *shost)
{
	unsigned long flags;
	FUNC0(eh_work_q);
	FUNC0(eh_done_q);

	FUNC7(shost->host_lock, flags);
	FUNC2(&shost->eh_cmd_q, &eh_work_q);
	FUNC8(shost->host_lock, flags);

	FUNC1(1, FUNC5(shost, &eh_work_q));

	if (!FUNC4(&eh_work_q, &eh_done_q))
		FUNC6(shost, &eh_work_q, &eh_done_q);

	FUNC7(shost->host_lock, flags);
	if (shost->eh_deadline != -1)
		shost->last_reset = 0;
	FUNC8(shost->host_lock, flags);
	FUNC3(&eh_done_q);
}