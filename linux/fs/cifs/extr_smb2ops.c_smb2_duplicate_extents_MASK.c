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
typedef  scalar_t__ u64 ;
struct duplicate_extents_to_file {void* ByteCount; void* TargetFileOffset; void* SourceFileOffset; int /*<<< orphan*/  PersistentFileHandle; int /*<<< orphan*/  VolatileFileHandle; } ;
struct TYPE_3__ {int /*<<< orphan*/  Attributes; } ;
struct cifs_tcon {TYPE_1__ fsAttrInfo; } ;
struct TYPE_4__ {int /*<<< orphan*/  volatile_fid; int /*<<< orphan*/  persistent_fid; } ;
struct cifsFileInfo {TYPE_2__ fid; int /*<<< orphan*/  tlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIFSMaxBufSize ; 
 int EOPNOTSUPP ; 
 int FILE_SUPPORTS_BLOCK_REFCOUNTING ; 
 int /*<<< orphan*/  FSCTL_DUPLICATE_EXTENTS_TO_FILE ; 
 int /*<<< orphan*/  FYI ; 
 int FUNC0 (unsigned int const,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned int const,struct cifs_tcon*,struct cifsFileInfo*,scalar_t__,int) ; 
 struct cifs_tcon* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(const unsigned int xid,
			struct cifsFileInfo *srcfile,
			struct cifsFileInfo *trgtfile, u64 src_off,
			u64 len, u64 dest_off)
{
	int rc;
	unsigned int ret_data_len;
	struct duplicate_extents_to_file dup_ext_buf;
	struct cifs_tcon *tcon = FUNC5(trgtfile->tlink);

	/* server fileays advertise duplicate extent support with this flag */
	if ((FUNC3(tcon->fsAttrInfo.Attributes) &
	     FILE_SUPPORTS_BLOCK_REFCOUNTING) == 0)
		return -EOPNOTSUPP;

	dup_ext_buf.VolatileFileHandle = srcfile->fid.volatile_fid;
	dup_ext_buf.PersistentFileHandle = srcfile->fid.persistent_fid;
	dup_ext_buf.SourceFileOffset = FUNC2(src_off);
	dup_ext_buf.TargetFileOffset = FUNC2(dest_off);
	dup_ext_buf.ByteCount = FUNC2(len);
	FUNC1(FYI, "Duplicate extents: src off %lld dst off %lld len %lld\n",
		src_off, dest_off, len);

	rc = FUNC4(xid, tcon, trgtfile, dest_off + len, false);
	if (rc)
		goto duplicate_extents_out;

	rc = FUNC0(xid, tcon, trgtfile->fid.persistent_fid,
			trgtfile->fid.volatile_fid,
			FSCTL_DUPLICATE_EXTENTS_TO_FILE,
			true /* is_fsctl */,
			(char *)&dup_ext_buf,
			sizeof(struct duplicate_extents_to_file),
			CIFSMaxBufSize, NULL,
			&ret_data_len);

	if (ret_data_len > 0)
		FUNC1(FYI, "Non-zero response length in duplicate extents\n");

duplicate_extents_out:
	return rc;
}