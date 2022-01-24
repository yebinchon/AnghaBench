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
struct mid_q_entry {unsigned int resp_buf_size; scalar_t__ resp_buf; int /*<<< orphan*/  decrypted; } ;
struct kvec {char* iov_base; unsigned int iov_len; } ;
struct TCP_Server_Info {scalar_t__ sign; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int FUNC4 (struct smb_rqst*,struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  u32 ; 

int
FUNC5(struct mid_q_entry *mid, struct TCP_Server_Info *server,
		   bool log_error)
{
	unsigned int len = mid->resp_buf_size;
	struct kvec iov[1];
	struct smb_rqst rqst = { .rq_iov = iov,
				 .rq_nvec = 1 };

	iov[0].iov_base = (char *)mid->resp_buf;
	iov[0].iov_len = len;

	FUNC1(mid->resp_buf, FUNC3(u32, 80, len));
	/* convert the length into a more usable form */
	if (len > 24 && server->sign && !mid->decrypted) {
		int rc;

		rc = FUNC4(&rqst, server);
		if (rc)
			FUNC0(VFS, "SMB signature verification returned error = %d\n",
				 rc);
	}

	return FUNC2(mid->resp_buf, log_error);
}