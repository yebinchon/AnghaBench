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
struct smb_rqst {TYPE_1__* rq_iov; } ;
struct smb2_sync_hdr {scalar_t__ Command; } ;
struct mid_q_entry {int dummy; } ;
struct TCP_Server_Info {scalar_t__ tcpStatus; } ;
struct TYPE_2__ {scalar_t__ iov_base; } ;

/* Variables and functions */
 scalar_t__ CifsNeedNegotiate ; 
 int /*<<< orphan*/  FUNC0 (struct mid_q_entry*) ; 
 int EAGAIN ; 
 int ENOMEM ; 
 struct mid_q_entry* FUNC1 (int) ; 
 scalar_t__ SMB2_NEGOTIATE ; 
 int /*<<< orphan*/  FUNC2 (struct TCP_Server_Info*,struct smb2_sync_hdr*) ; 
 struct mid_q_entry* FUNC3 (struct smb2_sync_hdr*,struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC4 (struct TCP_Server_Info*,struct smb2_sync_hdr*) ; 
 int FUNC5 (struct smb_rqst*,struct TCP_Server_Info*) ; 

struct mid_q_entry *
FUNC6(struct TCP_Server_Info *server, struct smb_rqst *rqst)
{
	int rc;
	struct smb2_sync_hdr *shdr =
			(struct smb2_sync_hdr *)rqst->rq_iov[0].iov_base;
	struct mid_q_entry *mid;

	if (server->tcpStatus == CifsNeedNegotiate &&
	   shdr->Command != SMB2_NEGOTIATE)
		return FUNC1(-EAGAIN);

	FUNC4(server, shdr);

	mid = FUNC3(shdr, server);
	if (mid == NULL) {
		FUNC2(server, shdr);
		return FUNC1(-ENOMEM);
	}

	rc = FUNC5(rqst, server);
	if (rc) {
		FUNC2(server, shdr);
		FUNC0(mid);
		return FUNC1(rc);
	}

	return mid;
}