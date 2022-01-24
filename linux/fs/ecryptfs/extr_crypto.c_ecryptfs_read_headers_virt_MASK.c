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
struct ecryptfs_crypt_stat {int flags; scalar_t__ file_version; int /*<<< orphan*/ * mount_crypt_stat; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  mount_crypt_stat; } ;

/* Variables and functions */
 int ECRYPTFS_FILE_SIZE_BYTES ; 
 int ECRYPTFS_I_SIZE_INITIALIZED ; 
 scalar_t__ ECRYPTFS_SUPPORTED_FILE_VERSION ; 
 int EINVAL ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 scalar_t__ MAGIC_ECRYPTFS_MARKER_SIZE_BYTES ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ecryptfs_crypt_stat*,char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ecryptfs_crypt_stat*,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ecryptfs_crypt_stat*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (char*) ; 
 int FUNC8 (struct ecryptfs_crypt_stat*,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ecryptfs_crypt_stat*) ; 

__attribute__((used)) static int FUNC10(char *page_virt,
				      struct ecryptfs_crypt_stat *crypt_stat,
				      struct dentry *ecryptfs_dentry,
				      int validate_header_size)
{
	int rc = 0;
	int offset;
	int bytes_read;

	FUNC5(crypt_stat);
	crypt_stat->mount_crypt_stat = &FUNC6(
		ecryptfs_dentry->d_sb)->mount_crypt_stat;
	offset = ECRYPTFS_FILE_SIZE_BYTES;
	rc = FUNC7(page_virt + offset);
	if (rc)
		goto out;
	if (!(crypt_stat->flags & ECRYPTFS_I_SIZE_INITIALIZED))
		FUNC1(page_virt, FUNC0(ecryptfs_dentry));
	offset += MAGIC_ECRYPTFS_MARKER_SIZE_BYTES;
	FUNC4(crypt_stat, (page_virt + offset), &bytes_read);
	if (crypt_stat->file_version > ECRYPTFS_SUPPORTED_FILE_VERSION) {
		FUNC3(KERN_WARNING, "File version is [%d]; only "
				"file version [%d] is supported by this "
				"version of eCryptfs\n",
				crypt_stat->file_version,
				ECRYPTFS_SUPPORTED_FILE_VERSION);
		rc = -EINVAL;
		goto out;
	}
	offset += bytes_read;
	if (crypt_stat->file_version >= 1) {
		rc = FUNC8(crypt_stat, (page_virt + offset),
					   &bytes_read, validate_header_size);
		if (rc) {
			FUNC3(KERN_WARNING, "Error reading header "
					"metadata; rc = [%d]\n", rc);
		}
		offset += bytes_read;
	} else
		FUNC9(crypt_stat);
	rc = FUNC2(crypt_stat, (page_virt + offset),
				       ecryptfs_dentry);
out:
	return rc;
}