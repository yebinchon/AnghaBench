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
typedef  int /*<<< orphan*/  u64 ;
struct resume_key_req {int /*<<< orphan*/  ResumeKey; } ;
struct copychunk_ioctl {int /*<<< orphan*/  SourceKey; } ;
struct cifs_tcon {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIFSMaxBufSize ; 
 int /*<<< orphan*/  COPY_CHUNK_RES_KEY_SIZE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FSCTL_SRV_REQUEST_RESUME_KEY ; 
 int FUNC0 (unsigned int const,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,unsigned int*) ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct resume_key_req*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(const unsigned int xid, struct cifs_tcon *tcon,
		     u64 persistent_fid, u64 volatile_fid,
		     struct copychunk_ioctl *pcchunk)
{
	int rc;
	unsigned int ret_data_len;
	struct resume_key_req *res_key;

	rc = FUNC0(xid, tcon, persistent_fid, volatile_fid,
			FSCTL_SRV_REQUEST_RESUME_KEY, true /* is_fsctl */,
			NULL, 0 /* no input */, CIFSMaxBufSize,
			(char **)&res_key, &ret_data_len);

	if (rc) {
		FUNC1(VFS, "refcpy ioctl error %d getting resume key\n", rc);
		goto req_res_key_exit;
	}
	if (ret_data_len < sizeof(struct resume_key_req)) {
		FUNC1(VFS, "Invalid refcopy resume key length\n");
		rc = -EINVAL;
		goto req_res_key_exit;
	}
	FUNC3(pcchunk->SourceKey, res_key->ResumeKey, COPY_CHUNK_RES_KEY_SIZE);

req_res_key_exit:
	FUNC2(res_key);
	return rc;
}