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
typedef  int u32 ;
struct inode {TYPE_1__* i_sb; int /*<<< orphan*/  i_mapping; } ;
struct file_allocated_range_buffer {void* length; void* file_offset; } ;
struct file {struct cifsFileInfo* private_data; } ;
struct cifs_tcon {int dummy; } ;
struct cifsInodeInfo {int cifsAttrs; } ;
struct TYPE_4__ {int /*<<< orphan*/  volatile_fid; int /*<<< orphan*/  persistent_fid; } ;
struct cifsFileInfo {TYPE_2__ fid; int /*<<< orphan*/  dentry; } ;
typedef  scalar_t__ loff_t ;
typedef  int /*<<< orphan*/  in_data ;
struct TYPE_3__ {int /*<<< orphan*/  s_maxbytes; } ;

/* Variables and functions */
 struct cifsInodeInfo* FUNC0 (struct inode*) ; 
 int E2BIG ; 
 int EINVAL ; 
 scalar_t__ ENXIO ; 
 int FILE_ATTRIBUTE_SPARSE_FILE ; 
 int /*<<< orphan*/  FSCTL_QUERY_ALLOCATED_RANGES ; 
 int SEEK_DATA ; 
 int SEEK_HOLE ; 
 int FUNC1 (unsigned int,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct cifsFileInfo*) ; 
 void* FUNC3 (scalar_t__) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct cifsFileInfo* FUNC6 (struct cifsInodeInfo*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 scalar_t__ FUNC8 (struct file*,scalar_t__,int) ; 
 unsigned int FUNC9 () ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct file_allocated_range_buffer*) ; 
 scalar_t__ FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,struct cifs_tcon*,TYPE_2__*) ; 
 scalar_t__ FUNC14 (struct file*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static loff_t FUNC15(struct file *file, struct cifs_tcon *tcon, loff_t offset, int whence)
{
	struct cifsFileInfo *wrcfile, *cfile = file->private_data;
	struct cifsInodeInfo *cifsi;
	struct inode *inode;
	int rc = 0;
	struct file_allocated_range_buffer in_data, *out_data = NULL;
	u32 out_data_len;
	unsigned int xid;

	if (whence != SEEK_HOLE && whence != SEEK_DATA)
		return FUNC8(file, offset, whence);

	inode = FUNC4(cfile->dentry);
	cifsi = FUNC0(inode);

	if (offset < 0 || offset >= FUNC10(inode))
		return -ENXIO;

	xid = FUNC9();
	/*
	 * We need to be sure that all dirty pages are written as they
	 * might fill holes on the server.
	 * Note that we also MUST flush any written pages since at least
	 * some servers (Windows2016) will not reflect recent writes in
	 * QUERY_ALLOCATED_RANGES until SMB2_flush is called.
	 */
	wrcfile = FUNC6(cifsi, false);
	if (wrcfile) {
		FUNC5(inode->i_mapping);
		FUNC13(xid, tcon, &wrcfile->fid);
		FUNC2(wrcfile);
	}

	if (!(cifsi->cifsAttrs & FILE_ATTRIBUTE_SPARSE_FILE)) {
		if (whence == SEEK_HOLE)
			offset = FUNC10(inode);
		goto lseek_exit;
	}

	in_data.file_offset = FUNC3(offset);
	in_data.length = FUNC3(FUNC10(inode));

	rc = FUNC1(xid, tcon, cfile->fid.persistent_fid,
			cfile->fid.volatile_fid,
			FSCTL_QUERY_ALLOCATED_RANGES, true,
			(char *)&in_data, sizeof(in_data),
			sizeof(struct file_allocated_range_buffer),
			(char **)&out_data, &out_data_len);
	if (rc == -E2BIG)
		rc = 0;
	if (rc)
		goto lseek_exit;

	if (whence == SEEK_HOLE && out_data_len == 0)
		goto lseek_exit;

	if (whence == SEEK_DATA && out_data_len == 0) {
		rc = -ENXIO;
		goto lseek_exit;
	}

	if (out_data_len < sizeof(struct file_allocated_range_buffer)) {
		rc = -EINVAL;
		goto lseek_exit;
	}
	if (whence == SEEK_DATA) {
		offset = FUNC12(out_data->file_offset);
		goto lseek_exit;
	}
	if (offset < FUNC12(out_data->file_offset))
		goto lseek_exit;

	offset = FUNC12(out_data->file_offset) + FUNC12(out_data->length);

 lseek_exit:
	FUNC7(xid);
	FUNC11(out_data);
	if (!rc)
		return FUNC14(file, offset, inode->i_sb->s_maxbytes);
	else
		return rc;
}