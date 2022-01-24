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
struct smb_rqst {int rq_nvec; struct kvec* rq_iov; } ;
struct mid_q_entry {char* resp_buf; int /*<<< orphan*/  sequence_number; } ;
struct kvec {char* iov_base; int iov_len; } ;
struct TCP_Server_Info {scalar_t__ sign; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct smb_rqst*,struct TCP_Server_Info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  u32 ; 

int
FUNC6(struct mid_q_entry *mid, struct TCP_Server_Info *server,
		   bool log_error)
{
	unsigned int len = FUNC3(mid->resp_buf) + 4;

	FUNC2(mid->resp_buf, FUNC5(u32, 92, len));

	/* convert the length into a more usable form */
	if (server->sign) {
		struct kvec iov[2];
		int rc = 0;
		struct smb_rqst rqst = { .rq_iov = iov,
					 .rq_nvec = 2 };

		iov[0].iov_base = mid->resp_buf;
		iov[0].iov_len = 4;
		iov[1].iov_base = (char *)mid->resp_buf + 4;
		iov[1].iov_len = len - 4;
		/* FIXME: add code to kill session */
		rc = FUNC1(&rqst, server,
					   mid->sequence_number);
		if (rc)
			FUNC0(VFS, "SMB signature verification returned error = %d\n",
				 rc);
	}

	/* BB special case reconnect tid and uid here? */
	return FUNC4(mid->resp_buf, log_error);
}