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
struct scsi_cmnd {int /*<<< orphan*/  device; } ;
struct iscsi_cls_session {scalar_t__ state; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FAST_IO_FAIL ; 
 scalar_t__ ISCSI_SESSION_FREE ; 
 scalar_t__ ISCSI_SESSION_LOGGED_IN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct iscsi_cls_session* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct scsi_cmnd *cmd)
{
	struct iscsi_cls_session *session =
			FUNC4(FUNC1(cmd->device));
	unsigned long flags;
	int ret = 0;

	FUNC2(&session->lock, flags);
	while (session->state != ISCSI_SESSION_LOGGED_IN) {
		if (session->state == ISCSI_SESSION_FREE) {
			ret = FAST_IO_FAIL;
			break;
		}
		FUNC3(&session->lock, flags);
		FUNC0(1000);
		FUNC2(&session->lock, flags);
	}
	FUNC3(&session->lock, flags);
	return ret;
}