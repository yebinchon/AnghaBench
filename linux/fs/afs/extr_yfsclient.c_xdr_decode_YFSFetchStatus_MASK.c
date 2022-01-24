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
typedef  int u32 ;
struct yfs_xdr_YFSFetchStatus {int /*<<< orphan*/  data_version; int /*<<< orphan*/  size; int /*<<< orphan*/  mtime_server; int /*<<< orphan*/  mtime_client; int /*<<< orphan*/  lock_count; int /*<<< orphan*/  group; int /*<<< orphan*/  mode; int /*<<< orphan*/  anon_access; int /*<<< orphan*/  caller_access; int /*<<< orphan*/  owner; int /*<<< orphan*/  author; int /*<<< orphan*/  nlink; int /*<<< orphan*/  type; int /*<<< orphan*/  abort_code; } ;
struct afs_file_status {int abort_code; int nlink; int type; int caller_access; int anon_access; int mode; int lock_count; void* data_version; void* size; void* mtime_server; void* mtime_client; void* group; void* owner; void* author; } ;
struct afs_status_cb {int have_error; int have_status; struct afs_file_status status; } ;
struct afs_call {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
#define  AFS_FTYPE_DIR 130 
#define  AFS_FTYPE_FILE 129 
#define  AFS_FTYPE_SYMLINK 128 
 int /*<<< orphan*/  EBADMSG ; 
 int S_IALLUGO ; 
 scalar_t__ VNOVNODE ; 
 int /*<<< orphan*/  afs_eproto_bad_status ; 
 int FUNC0 (struct afs_call*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (struct yfs_xdr_YFSFetchStatus const*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const __be32 **_bp,
				     struct afs_call *call,
				     struct afs_status_cb *scb)
{
	const struct yfs_xdr_YFSFetchStatus *xdr = (const void *)*_bp;
	struct afs_file_status *status = &scb->status;
	u32 type;

	status->abort_code = FUNC1(xdr->abort_code);
	if (status->abort_code != 0) {
		if (status->abort_code == VNOVNODE)
			status->nlink = 0;
		scb->have_error = true;
		return 0;
	}

	type = FUNC1(xdr->type);
	switch (type) {
	case AFS_FTYPE_FILE:
	case AFS_FTYPE_DIR:
	case AFS_FTYPE_SYMLINK:
		status->type = type;
		break;
	default:
		goto bad;
	}

	status->nlink		= FUNC1(xdr->nlink);
	status->author		= FUNC5(xdr->author);
	status->owner		= FUNC5(xdr->owner);
	status->caller_access	= FUNC1(xdr->caller_access); /* Ticket dependent */
	status->anon_access	= FUNC1(xdr->anon_access);
	status->mode		= FUNC1(xdr->mode) & S_IALLUGO;
	status->group		= FUNC5(xdr->group);
	status->lock_count	= FUNC1(xdr->lock_count);

	status->mtime_client	= FUNC4(xdr->mtime_client);
	status->mtime_server	= FUNC4(xdr->mtime_server);
	status->size		= FUNC5(xdr->size);
	status->data_version	= FUNC5(xdr->data_version);
	scb->have_status	= true;

	*_bp += FUNC3(xdr);
	return 0;

bad:
	FUNC2(*_bp);
	return FUNC0(call, -EBADMSG, afs_eproto_bad_status);
}