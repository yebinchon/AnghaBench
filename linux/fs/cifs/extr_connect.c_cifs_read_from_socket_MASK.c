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
struct msghdr {int /*<<< orphan*/  msg_iter; } ;
struct kvec {char* iov_base; unsigned int iov_len; } ;
struct TCP_Server_Info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  READ ; 
 int FUNC0 (struct TCP_Server_Info*,struct msghdr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kvec*,int,unsigned int) ; 

int
FUNC2(struct TCP_Server_Info *server, char *buf,
		      unsigned int to_read)
{
	struct msghdr smb_msg;
	struct kvec iov = {.iov_base = buf, .iov_len = to_read};
	FUNC1(&smb_msg.msg_iter, READ, &iov, 1, to_read);

	return FUNC0(server, &smb_msg);
}