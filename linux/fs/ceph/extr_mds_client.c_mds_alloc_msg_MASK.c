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
struct ceph_msg_header {int /*<<< orphan*/  front_len; int /*<<< orphan*/  type; } ;
struct ceph_msg {int dummy; } ;
struct ceph_connection {struct ceph_msg* in_msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 struct ceph_msg* FUNC0 (int,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 

__attribute__((used)) static struct ceph_msg *FUNC4(struct ceph_connection *con,
				struct ceph_msg_header *hdr, int *skip)
{
	struct ceph_msg *msg;
	int type = (int) FUNC1(hdr->type);
	int front_len = (int) FUNC2(hdr->front_len);

	if (con->in_msg)
		return con->in_msg;

	*skip = 0;
	msg = FUNC0(type, front_len, GFP_NOFS, false);
	if (!msg) {
		FUNC3("unable to allocate msg type %d len %d\n",
		       type, front_len);
		return NULL;
	}

	return msg;
}