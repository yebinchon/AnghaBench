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
struct smb2_sync_hdr {int dummy; } ;
struct mid_q_entry {int dummy; } ;
struct cifs_ses {int /*<<< orphan*/  server; } ;
struct TYPE_2__ {scalar_t__ iov_base; } ;

/* Variables and functions */
 struct mid_q_entry* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mid_q_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct smb2_sync_hdr*) ; 
 int FUNC3 (struct cifs_ses*,struct smb2_sync_hdr*,struct mid_q_entry**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct smb2_sync_hdr*) ; 
 int FUNC5 (struct smb_rqst*,int /*<<< orphan*/ ) ; 

struct mid_q_entry *
FUNC6(struct cifs_ses *ses, struct smb_rqst *rqst)
{
	int rc;
	struct smb2_sync_hdr *shdr =
			(struct smb2_sync_hdr *)rqst->rq_iov[0].iov_base;
	struct mid_q_entry *mid;

	FUNC4(ses->server, shdr);

	rc = FUNC3(ses, shdr, &mid);
	if (rc) {
		FUNC2(ses->server, shdr);
		return FUNC0(rc);
	}

	rc = FUNC5(rqst, ses->server);
	if (rc) {
		FUNC2(ses->server, shdr);
		FUNC1(mid);
		return FUNC0(rc);
	}

	return mid;
}