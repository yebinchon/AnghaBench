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
struct smb_hdr {int /*<<< orphan*/  smb_buf_length; scalar_t__ WordCount; int /*<<< orphan*/  Command; } ;
struct mid_q_entry {int /*<<< orphan*/  sequence_number; } ;
struct TCP_Server_Info {int /*<<< orphan*/  srv_mutex; int /*<<< orphan*/  sequence_number; } ;
struct TYPE_2__ {scalar_t__ iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  SMB_COM_NT_CANCEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct smb_hdr*,struct TCP_Server_Info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct smb_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct smb_hdr*) ; 
 int FUNC8 (struct TCP_Server_Info*,struct smb_hdr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct TCP_Server_Info *server, struct smb_rqst *rqst,
	       struct mid_q_entry *mid)
{
	int rc = 0;
	struct smb_hdr *in_buf = (struct smb_hdr *)rqst->rq_iov[0].iov_base;

	/* -4 for RFC1001 length and +2 for BCC field */
	in_buf->smb_buf_length = FUNC3(sizeof(struct smb_hdr) - 4  + 2);
	in_buf->Command = SMB_COM_NT_CANCEL;
	in_buf->WordCount = 0;
	FUNC7(0, in_buf);

	FUNC5(&server->srv_mutex);
	rc = FUNC2(in_buf, server, &mid->sequence_number);
	if (rc) {
		FUNC6(&server->srv_mutex);
		return rc;
	}

	/*
	 * The response to this call was already factored into the sequence
	 * number when the call went out, so we must adjust it back downward
	 * after signing here.
	 */
	--server->sequence_number;
	rc = FUNC8(server, in_buf, FUNC0(in_buf->smb_buf_length));
	if (rc < 0)
		server->sequence_number--;

	FUNC6(&server->srv_mutex);

	FUNC1(FYI, "issued NT_CANCEL for mid %u, rc = %d\n",
		 FUNC4(in_buf), rc);

	return rc;
}