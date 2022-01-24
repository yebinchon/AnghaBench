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
struct iscsi_cls_session {unsigned int target_id; int ida_used; int /*<<< orphan*/  sess_list; int /*<<< orphan*/  dev; int /*<<< orphan*/  sid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_cls_session*,char*) ; 
 int /*<<< orphan*/  ISCSI_KEVENT_CREATE_SESSION ; 
 unsigned int ISCSI_MAX_TARGET ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct iscsi_cls_session*,char*) ; 
 int /*<<< orphan*/  iscsi_sess_ida ; 
 int /*<<< orphan*/  FUNC7 (struct iscsi_cls_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iscsi_session_nr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sesslist ; 
 int /*<<< orphan*/  sesslock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct iscsi_cls_session *session, unsigned int target_id)
{
	unsigned long flags;
	int id = 0;
	int err;

	session->sid = FUNC1(1, &iscsi_session_nr);

	if (target_id == ISCSI_MAX_TARGET) {
		id = FUNC4(&iscsi_sess_ida, 0, 0, GFP_KERNEL);

		if (id < 0) {
			FUNC6(KERN_ERR, session,
					"Failure in Target ID Allocation\n");
			return id;
		}
		session->target_id = (unsigned int)id;
		session->ida_used = true;
	} else
		session->target_id = target_id;

	FUNC2(&session->dev, "session%u", session->sid);
	err = FUNC3(&session->dev);
	if (err) {
		FUNC6(KERN_ERR, session,
					 "could not register session's dev\n");
		goto release_ida;
	}
	FUNC11(&session->dev);

	FUNC9(&sesslock, flags);
	FUNC8(&session->sess_list, &sesslist);
	FUNC10(&sesslock, flags);

	FUNC7(session, ISCSI_KEVENT_CREATE_SESSION);
	FUNC0(session, "Completed session adding\n");
	return 0;

release_ida:
	if (session->ida_used)
		FUNC5(&iscsi_sess_ida, session->target_id);

	return err;
}