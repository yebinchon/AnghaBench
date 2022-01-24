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
struct TYPE_2__ {int /*<<< orphan*/  lkey; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct smbd_response {TYPE_1__ sge; int /*<<< orphan*/  type; } ;
struct smbd_connection {int negotiate_done; int /*<<< orphan*/  negotiate_completion; } ;

/* Variables and functions */
 int EINTR ; 
 int ENOTCONN ; 
 int ERESTARTSYS ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  SMBD_NEGOTIATE_RESP ; 
 int SMBD_NEGOTIATE_TIMEOUT ; 
 struct smbd_response* FUNC0 (struct smbd_connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC3 (struct smbd_connection*,struct smbd_response*) ; 
 int FUNC4 (struct smbd_connection*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct smbd_connection *info)
{
	int rc;
	struct smbd_response *response = FUNC0(info);

	response->type = SMBD_NEGOTIATE_RESP;
	rc = FUNC3(info, response);
	FUNC2(INFO,
		"smbd_post_recv rc=%d iov.addr=%llx iov.length=%x "
		"iov.lkey=%x\n",
		rc, response->sge.addr,
		response->sge.length, response->sge.lkey);
	if (rc)
		return rc;

	FUNC1(&info->negotiate_completion);
	info->negotiate_done = false;
	rc = FUNC4(info);
	if (rc)
		return rc;

	rc = FUNC5(
		&info->negotiate_completion, SMBD_NEGOTIATE_TIMEOUT * HZ);
	FUNC2(INFO, "wait_for_completion_timeout rc=%d\n", rc);

	if (info->negotiate_done)
		return 0;

	if (rc == 0)
		rc = -ETIMEDOUT;
	else if (rc == -ERESTARTSYS)
		rc = -EINTR;
	else
		rc = -ENOTCONN;

	return rc;
}