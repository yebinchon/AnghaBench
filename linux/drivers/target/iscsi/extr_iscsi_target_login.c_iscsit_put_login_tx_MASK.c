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
typedef  int /*<<< orphan*/  u32 ;
struct iscsi_login {int /*<<< orphan*/  rsp_buf; int /*<<< orphan*/  rsp; } ;
struct iscsi_conn {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct iscsi_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(struct iscsi_conn *conn, struct iscsi_login *login,
			u32 length)
{
	if (FUNC0(conn, login->rsp, login->rsp_buf, length) < 0)
		return -1;

	return 0;
}