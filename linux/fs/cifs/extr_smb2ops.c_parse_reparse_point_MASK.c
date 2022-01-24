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
struct reparse_symlink_data_buffer {int dummy; } ;
struct reparse_posix_data {int dummy; } ;
struct reparse_data_buffer {int /*<<< orphan*/  ReparseTag; int /*<<< orphan*/  ReparseDataLength; } ;
struct cifs_sb_info {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int EOPNOTSUPP ; 
#define  IO_REPARSE_TAG_NFS 129 
#define  IO_REPARSE_TAG_SYMLINK 128 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct reparse_posix_data*,int,char**,struct cifs_sb_info*) ; 
 int FUNC4 (struct reparse_symlink_data_buffer*,int,char**,struct cifs_sb_info*) ; 

__attribute__((used)) static int
FUNC5(struct reparse_data_buffer *buf,
		    u32 plen, char **target_path,
		    struct cifs_sb_info *cifs_sb)
{
	if (plen < sizeof(struct reparse_data_buffer)) {
		FUNC0(VFS, "reparse buffer is too small. Must be "
			 "at least 8 bytes but was %d\n", plen);
		return -EIO;
	}

	if (plen < FUNC1(buf->ReparseDataLength) +
	    sizeof(struct reparse_data_buffer)) {
		FUNC0(VFS, "srv returned invalid reparse buf "
			 "length: %d\n", plen);
		return -EIO;
	}

	/* See MS-FSCC 2.1.2 */
	switch (FUNC2(buf->ReparseTag)) {
	case IO_REPARSE_TAG_NFS:
		return FUNC3(
			(struct reparse_posix_data *)buf,
			plen, target_path, cifs_sb);
	case IO_REPARSE_TAG_SYMLINK:
		return FUNC4(
			(struct reparse_symlink_data_buffer *)buf,
			plen, target_path, cifs_sb);
	default:
		FUNC0(VFS, "srv returned unknown symlink buffer "
			 "tag:0x%08x\n", FUNC2(buf->ReparseTag));
		return -EOPNOTSUPP;
	}
}