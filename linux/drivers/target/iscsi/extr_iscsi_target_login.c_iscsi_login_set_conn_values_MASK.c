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
typedef  int /*<<< orphan*/  u32 ;
struct iscsi_session {int dummy; } ;
struct iscsi_conn {scalar_t__ auth_id; int /*<<< orphan*/  stat_sn; int /*<<< orphan*/  cid; struct iscsi_session* sess; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  auth_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  auth_id_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* iscsit_global ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(
	struct iscsi_session *sess,
	struct iscsi_conn *conn,
	__be16 cid)
{
	int ret;
	conn->sess		= sess;
	conn->cid		= FUNC0(cid);
	/*
	 * Generate a random Status sequence number (statsn) for the new
	 * iSCSI connection.
	 */
	ret = FUNC1(&conn->stat_sn, sizeof(u32));
	if (FUNC4(ret))
		return ret;

	FUNC2(&auth_id_lock);
	conn->auth_id		= iscsit_global->auth_id++;
	FUNC3(&auth_id_lock);
	return 0;
}