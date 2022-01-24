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
struct cifs_credits {int value; scalar_t__ instance; } ;
struct TCP_Server_Info {scalar_t__ reconnect_instance; int /*<<< orphan*/  request_q; int /*<<< orphan*/  req_lock; int /*<<< orphan*/  credits; } ;

/* Variables and functions */
 int FUNC0 (unsigned int const,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  SMB2_MAX_BUFFER_SIZE ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct TCP_Server_Info *server,
		    struct cifs_credits *credits,
		    const unsigned int payload_size)
{
	int new_val = FUNC0(payload_size, SMB2_MAX_BUFFER_SIZE);

	if (!credits->value || credits->value == new_val)
		return 0;

	if (credits->value < new_val) {
		FUNC1(1, "request has less credits (%d) than required (%d)",
			  credits->value, new_val);
		return -ENOTSUPP;
	}

	FUNC3(&server->req_lock);

	if (server->reconnect_instance != credits->instance) {
		FUNC4(&server->req_lock);
		FUNC2(VFS, "trying to return %d credits to old session\n",
			 credits->value - new_val);
		return -EAGAIN;
	}

	server->credits += credits->value - new_val;
	FUNC4(&server->req_lock);
	FUNC5(&server->request_q);
	credits->value = new_val;
	return 0;
}