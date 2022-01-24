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
struct msghdr {scalar_t__ msg_controllen; int /*<<< orphan*/ * msg_control; } ;
struct TCP_Server_Info {scalar_t__ tcpStatus; int /*<<< orphan*/  ssocket; scalar_t__ smbd_conn; } ;

/* Variables and functions */
 scalar_t__ CifsExiting ; 
 scalar_t__ CifsNeedReconnect ; 
 int EAGAIN ; 
 int ECONNABORTED ; 
 int EINTR ; 
 int ERESTARTSYS ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC2 (struct TCP_Server_Info*) ; 
 scalar_t__ FUNC3 (struct msghdr*) ; 
 scalar_t__ FUNC4 (struct TCP_Server_Info*) ; 
 int FUNC5 (scalar_t__,struct msghdr*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct msghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 scalar_t__ FUNC9 (struct TCP_Server_Info*) ; 

__attribute__((used)) static int
FUNC10(struct TCP_Server_Info *server, struct msghdr *smb_msg)
{
	int length = 0;
	int total_read;

	smb_msg->msg_control = NULL;
	smb_msg->msg_controllen = 0;

	for (total_read = 0; FUNC3(smb_msg); total_read += length) {
		FUNC7();

		/* reconnect if no credits and no requests in flight */
		if (FUNC9(server)) {
			FUNC2(server);
			return -ECONNABORTED;
		}

		if (FUNC4(server))
			return -ECONNABORTED;
		if (FUNC1(server) && server->smbd_conn)
			length = FUNC5(server->smbd_conn, smb_msg);
		else
			length = FUNC6(server->ssocket, smb_msg, 0);

		if (server->tcpStatus == CifsExiting)
			return -ESHUTDOWN;

		if (server->tcpStatus == CifsNeedReconnect) {
			FUNC2(server);
			return -ECONNABORTED;
		}

		if (length == -ERESTARTSYS ||
		    length == -EAGAIN ||
		    length == -EINTR) {
			/*
			 * Minimum sleep to prevent looping, allowing socket
			 * to clear and app threads to set tcpStatus
			 * CifsNeedReconnect if server hung.
			 */
			FUNC8(1000, 2000);
			length = 0;
			continue;
		}

		if (length <= 0) {
			FUNC0(FYI, "Received no data or error: %d\n", length);
			FUNC2(server);
			return -ECONNABORTED;
		}
	}
	return total_read;
}