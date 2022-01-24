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
struct iscsi_conn {struct cxgbit_sock* context; } ;
struct cxgbit_sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (struct cxgbit_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct iscsi_conn *conn)
{
	struct cxgbit_sock *csk = conn->context;

	while (!FUNC2()) {
		FUNC1(conn, current, 0);
		if (FUNC0(csk))
			return;
	}
}