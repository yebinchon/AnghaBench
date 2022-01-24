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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct file_allocated_range_buffer {void* length; void* file_offset; } ;
struct fiemap_extent_info {int dummy; } ;
struct cifs_tcon {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  volatile_fid; int /*<<< orphan*/  persistent_fid; } ;
struct cifsFileInfo {TYPE_1__ fid; } ;
typedef  int /*<<< orphan*/  in_data ;

/* Variables and functions */
 int E2BIG ; 
 int EBADR ; 
 int EINVAL ; 
 int FIEMAP_EXTENT_LAST ; 
 int /*<<< orphan*/  FIEMAP_FLAG_SYNC ; 
 int /*<<< orphan*/  FSCTL_QUERY_ALLOCATED_RANGES ; 
 int FUNC0 (unsigned int,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int,char**,int*) ; 
 void* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct fiemap_extent_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fiemap_extent_info*,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct file_allocated_range_buffer*) ; 
 scalar_t__ FUNC7 (void*) ; 

__attribute__((used)) static int FUNC8(struct cifs_tcon *tcon,
		       struct cifsFileInfo *cfile,
		       struct fiemap_extent_info *fei, u64 start, u64 len)
{
	unsigned int xid;
	struct file_allocated_range_buffer in_data, *out_data;
	u32 out_data_len;
	int i, num, rc, flags, last_blob;
	u64 next;

	if (FUNC2(fei, FIEMAP_FLAG_SYNC))
		return -EBADR;

	xid = FUNC5();
 again:
	in_data.file_offset = FUNC1(start);
	in_data.length = FUNC1(len);

	rc = FUNC0(xid, tcon, cfile->fid.persistent_fid,
			cfile->fid.volatile_fid,
			FSCTL_QUERY_ALLOCATED_RANGES, true,
			(char *)&in_data, sizeof(in_data),
			1024 * sizeof(struct file_allocated_range_buffer),
			(char **)&out_data, &out_data_len);
	if (rc == -E2BIG) {
		last_blob = 0;
		rc = 0;
	} else
		last_blob = 1;
	if (rc)
		goto out;

	if (out_data_len < sizeof(struct file_allocated_range_buffer)) {
		rc = -EINVAL;
		goto out;
	}
	if (out_data_len % sizeof(struct file_allocated_range_buffer)) {
		rc = -EINVAL;
		goto out;
	}

	num = out_data_len / sizeof(struct file_allocated_range_buffer);
	for (i = 0; i < num; i++) {
		flags = 0;
		if (i == num - 1 && last_blob)
			flags |= FIEMAP_EXTENT_LAST;

		rc = FUNC3(fei,
				FUNC7(out_data[i].file_offset),
				FUNC7(out_data[i].file_offset),
				FUNC7(out_data[i].length),
				flags);
		if (rc < 0)
			goto out;
		if (rc == 1) {
			rc = 0;
			goto out;
		}
	}

	if (!last_blob) {
		next = FUNC7(out_data[num - 1].file_offset) +
		  FUNC7(out_data[num - 1].length);
		len = len - (next - start);
		start = next;
		goto again;
	}

 out:
	FUNC4(xid);
	FUNC6(out_data);
	return rc;
}