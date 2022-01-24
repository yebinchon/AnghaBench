#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct cifs_unix_set_info_args {int /*<<< orphan*/  device; int /*<<< orphan*/  mtime; int /*<<< orphan*/  atime; int /*<<< orphan*/  ctime; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  mode; } ;
struct TYPE_3__ {void* Type; void* Permissions; void* DevMinor; void* DevMajor; void* Gid; void* Uid; void* LastModificationTime; void* LastAccessTime; void* LastStatusChange; void* NumOfBytes; void* EndOfFile; } ;
typedef  TYPE_1__ FILE_UNIX_BASIC_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_CHANGE_64 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNIX_BLOCKDEV ; 
 int /*<<< orphan*/  UNIX_CHARDEV ; 
 int /*<<< orphan*/  UNIX_DIR ; 
 int /*<<< orphan*/  UNIX_FIFO ; 
 int /*<<< orphan*/  UNIX_FILE ; 
 int /*<<< orphan*/  UNIX_SOCKET ; 
 int /*<<< orphan*/  UNIX_SYMLINK ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(FILE_UNIX_BASIC_INFO *data_offset,
			const struct cifs_unix_set_info_args *args)
{
	u64 uid = NO_CHANGE_64, gid = NO_CHANGE_64;
	u64 mode = args->mode;

	if (FUNC14(args->uid))
		uid = FUNC12(&init_user_ns, args->uid);
	if (FUNC13(args->gid))
		gid = FUNC11(&init_user_ns, args->gid);

	/*
	 * Samba server ignores set of file size to zero due to bugs in some
	 * older clients, but we should be precise - we use SetFileSize to
	 * set file size and do not want to truncate file size to zero
	 * accidentally as happened on one Samba server beta by putting
	 * zero instead of -1 here
	 */
	data_offset->EndOfFile = FUNC10(NO_CHANGE_64);
	data_offset->NumOfBytes = FUNC10(NO_CHANGE_64);
	data_offset->LastStatusChange = FUNC10(args->ctime);
	data_offset->LastAccessTime = FUNC10(args->atime);
	data_offset->LastModificationTime = FUNC10(args->mtime);
	data_offset->Uid = FUNC10(uid);
	data_offset->Gid = FUNC10(gid);
	/* better to leave device as zero when it is  */
	data_offset->DevMajor = FUNC10(FUNC0(args->device));
	data_offset->DevMinor = FUNC10(FUNC1(args->device));
	data_offset->Permissions = FUNC10(mode);

	if (FUNC7(mode))
		data_offset->Type = FUNC9(UNIX_FILE);
	else if (FUNC4(mode))
		data_offset->Type = FUNC9(UNIX_DIR);
	else if (FUNC6(mode))
		data_offset->Type = FUNC9(UNIX_SYMLINK);
	else if (FUNC3(mode))
		data_offset->Type = FUNC9(UNIX_CHARDEV);
	else if (FUNC2(mode))
		data_offset->Type = FUNC9(UNIX_BLOCKDEV);
	else if (FUNC5(mode))
		data_offset->Type = FUNC9(UNIX_FIFO);
	else if (FUNC8(mode))
		data_offset->Type = FUNC9(UNIX_SOCKET);
}