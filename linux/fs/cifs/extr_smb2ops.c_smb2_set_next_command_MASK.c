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
struct smb_rqst {size_t rq_nvec; TYPE_1__* rq_iov; } ;
struct smb2_sync_hdr {int /*<<< orphan*/  NextCommand; } ;
struct cifs_tcon {struct cifs_ses* ses; } ;
struct cifs_ses {struct TCP_Server_Info* server; } ;
struct TCP_Server_Info {int dummy; } ;
struct TYPE_2__ {int iov_len; scalar_t__ iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ smb2_padding ; 
 int /*<<< orphan*/  FUNC4 (struct cifs_tcon*) ; 
 unsigned long FUNC5 (struct TCP_Server_Info*,struct smb_rqst*) ; 

void
FUNC6(struct cifs_tcon *tcon, struct smb_rqst *rqst)
{
	struct smb2_sync_hdr *shdr;
	struct cifs_ses *ses = tcon->ses;
	struct TCP_Server_Info *server = ses->server;
	unsigned long len = FUNC5(server, rqst);
	int i, num_padding;

	shdr = (struct smb2_sync_hdr *)(rqst->rq_iov[0].iov_base);
	if (shdr == NULL) {
		FUNC0(FYI, "shdr NULL in smb2_set_next_command\n");
		return;
	}

	/* SMB headers in a compound are 8 byte aligned. */

	/* No padding needed */
	if (!(len & 7))
		goto finished;

	num_padding = 8 - (len & 7);
	if (!FUNC4(tcon)) {
		/*
		 * If we do not have encryption then we can just add an extra
		 * iov for the padding.
		 */
		rqst->rq_iov[rqst->rq_nvec].iov_base = smb2_padding;
		rqst->rq_iov[rqst->rq_nvec].iov_len = num_padding;
		rqst->rq_nvec++;
		len += num_padding;
	} else {
		/*
		 * We can not add a small padding iov for the encryption case
		 * because the encryption framework can not handle the padding
		 * iovs.
		 * We have to flatten this into a single buffer and add
		 * the padding to it.
		 */
		for (i = 1; i < rqst->rq_nvec; i++) {
			FUNC2(rqst->rq_iov[0].iov_base +
			       rqst->rq_iov[0].iov_len,
			       rqst->rq_iov[i].iov_base,
			       rqst->rq_iov[i].iov_len);
			rqst->rq_iov[0].iov_len += rqst->rq_iov[i].iov_len;
		}
		FUNC3(rqst->rq_iov[0].iov_base + rqst->rq_iov[0].iov_len,
		       0, num_padding);
		rqst->rq_iov[0].iov_len += num_padding;
		len += num_padding;
		rqst->rq_nvec = 1;
	}

 finished:
	shdr->NextCommand = FUNC1(len);
}