#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct afs_xdr_AFSFetchStatus {scalar_t__ abort_code; scalar_t__ if_version; scalar_t__ type; scalar_t__ nlink; scalar_t__ author; scalar_t__ owner; scalar_t__ caller_access; scalar_t__ anon_access; scalar_t__ mode; scalar_t__ group; scalar_t__ lock_count; scalar_t__ mtime_client; scalar_t__ mtime_server; scalar_t__ size_lo; scalar_t__ size_hi; scalar_t__ data_version_lo; scalar_t__ data_version_hi; } ;
struct TYPE_4__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct afs_file_status {int size; int data_version; TYPE_2__ mtime_server; TYPE_1__ mtime_client; scalar_t__ lock_count; scalar_t__ group; scalar_t__ mode; scalar_t__ anon_access; scalar_t__ caller_access; scalar_t__ owner; scalar_t__ author; scalar_t__ nlink; scalar_t__ type; scalar_t__ abort_code; } ;
struct afs_status_cb {int have_error; int have_status; struct afs_file_status status; } ;
struct afs_call {scalar_t__ operation_ID; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_FSTATUS_VERSION ; 
#define  AFS_FTYPE_DIR 130 
#define  AFS_FTYPE_FILE 129 
#define  AFS_FTYPE_SYMLINK 128 
 int /*<<< orphan*/  EBADMSG ; 
 scalar_t__ S_IALLUGO ; 
 scalar_t__ afs_FS_InlineBulkStatus ; 
 int /*<<< orphan*/  afs_eproto_bad_status ; 
 int FUNC0 (struct afs_call*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC5(const __be32 **_bp,
				     struct afs_call *call,
				     struct afs_status_cb *scb)
{
	const struct afs_xdr_AFSFetchStatus *xdr = (const void *)*_bp;
	struct afs_file_status *status = &scb->status;
	bool inline_error = (call->operation_ID == afs_FS_InlineBulkStatus);
	u64 data_version, size;
	u32 type, abort_code;

	abort_code = FUNC2(xdr->abort_code);

	if (xdr->if_version != FUNC1(AFS_FSTATUS_VERSION)) {
		if (xdr->if_version == FUNC1(0) &&
		    abort_code != 0 &&
		    inline_error) {
			/* The OpenAFS fileserver has a bug in FS.InlineBulkStatus
			 * whereby it doesn't set the interface version in the error
			 * case.
			 */
			status->abort_code = abort_code;
			scb->have_error = true;
			return 0;
		}

		FUNC3("Unknown AFSFetchStatus version %u\n", FUNC2(xdr->if_version));
		goto bad;
	}

	if (abort_code != 0 && inline_error) {
		status->abort_code = abort_code;
		return 0;
	}

	type = FUNC2(xdr->type);
	switch (type) {
	case AFS_FTYPE_FILE:
	case AFS_FTYPE_DIR:
	case AFS_FTYPE_SYMLINK:
		status->type = type;
		break;
	default:
		goto bad;
	}

	status->nlink		= FUNC2(xdr->nlink);
	status->author		= FUNC2(xdr->author);
	status->owner		= FUNC2(xdr->owner);
	status->caller_access	= FUNC2(xdr->caller_access); /* Ticket dependent */
	status->anon_access	= FUNC2(xdr->anon_access);
	status->mode		= FUNC2(xdr->mode) & S_IALLUGO;
	status->group		= FUNC2(xdr->group);
	status->lock_count	= FUNC2(xdr->lock_count);

	status->mtime_client.tv_sec = FUNC2(xdr->mtime_client);
	status->mtime_client.tv_nsec = 0;
	status->mtime_server.tv_sec = FUNC2(xdr->mtime_server);
	status->mtime_server.tv_nsec = 0;

	size  = (u64)FUNC2(xdr->size_lo);
	size |= (u64)FUNC2(xdr->size_hi) << 32;
	status->size = size;

	data_version  = (u64)FUNC2(xdr->data_version_lo);
	data_version |= (u64)FUNC2(xdr->data_version_hi) << 32;
	status->data_version = data_version;
	scb->have_status = true;

	*_bp = (const void *)*_bp + sizeof(*xdr);
	return 0;

bad:
	FUNC4(*_bp);
	return FUNC0(call, -EBADMSG, afs_eproto_bad_status);
}