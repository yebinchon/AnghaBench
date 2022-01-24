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
struct iscsi_session {unsigned short max_r2t; } ;
struct iscsi_conn {struct iscsi_session* session; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned short) ; 
 int FUNC1 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned short*) ; 

int FUNC4(struct iscsi_conn *conn, char *buf)
{
	struct iscsi_session *session = conn->session;
	unsigned short r2ts = 0;

	FUNC3(buf, "%hu", &r2ts);
	if (session->max_r2t == r2ts)
		return 0;

	if (!r2ts || !FUNC0(r2ts))
		return -EINVAL;

	session->max_r2t = r2ts;
	FUNC2(session);
	return FUNC1(session);
}