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
struct task_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/ * response; } ;
struct TCP_Server_Info {scalar_t__ srv_count; int /*<<< orphan*/  tsk; TYPE_1__ session_key; int /*<<< orphan*/  tcpStatus; int /*<<< orphan*/  reconnect; int /*<<< orphan*/  echo; int /*<<< orphan*/  tcp_ses_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  CifsExiting ; 
 int /*<<< orphan*/  GlobalMid_Lock ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC3 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC4 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  cifs_tcp_ses_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct task_struct* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC12(struct TCP_Server_Info *server, int from_reconnect)
{
	struct task_struct *task;

	FUNC9(&cifs_tcp_ses_lock);
	if (--server->srv_count > 0) {
		FUNC10(&cifs_tcp_ses_lock);
		return;
	}

	FUNC7(FUNC4(server));

	FUNC6(&server->tcp_ses_list);
	FUNC10(&cifs_tcp_ses_lock);

	FUNC1(&server->echo);

	if (from_reconnect)
		/*
		 * Avoid deadlock here: reconnect work calls
		 * cifs_put_tcp_session() at its end. Need to be sure
		 * that reconnect work does nothing with server pointer after
		 * that step.
		 */
		FUNC0(&server->reconnect);
	else
		FUNC1(&server->reconnect);

	FUNC9(&GlobalMid_Lock);
	server->tcpStatus = CifsExiting;
	FUNC10(&GlobalMid_Lock);

	FUNC2(server);
	FUNC3(server);

	FUNC5(server->session_key.response);
	server->session_key.response = NULL;
	server->session_key.len = 0;

	task = FUNC11(&server->tsk, NULL);
	if (task)
		FUNC8(SIGKILL, task, 1);
}