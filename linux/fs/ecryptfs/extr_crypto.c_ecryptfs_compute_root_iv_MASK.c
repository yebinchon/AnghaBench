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
struct ecryptfs_crypt_stat {int iv_bytes; int flags; int /*<<< orphan*/  root_iv; int /*<<< orphan*/  key_size; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ECRYPTFS_KEY_VALID ; 
 int ECRYPTFS_SECURITY_WARNING ; 
 int EINVAL ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int MD5_DIGEST_SIZE ; 
 int FUNC1 (char*,struct ecryptfs_crypt_stat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct ecryptfs_crypt_stat *crypt_stat)
{
	int rc = 0;
	char dst[MD5_DIGEST_SIZE];

	FUNC0(crypt_stat->iv_bytes > MD5_DIGEST_SIZE);
	FUNC0(crypt_stat->iv_bytes <= 0);
	if (!(crypt_stat->flags & ECRYPTFS_KEY_VALID)) {
		rc = -EINVAL;
		FUNC2(KERN_WARNING, "Session key not valid; "
				"cannot generate root IV\n");
		goto out;
	}
	rc = FUNC1(dst, crypt_stat, crypt_stat->key,
				    crypt_stat->key_size);
	if (rc) {
		FUNC2(KERN_WARNING, "Error attempting to compute "
				"MD5 while generating root IV\n");
		goto out;
	}
	FUNC3(crypt_stat->root_iv, dst, crypt_stat->iv_bytes);
out:
	if (rc) {
		FUNC4(crypt_stat->root_iv, 0, crypt_stat->iv_bytes);
		crypt_stat->flags |= ECRYPTFS_SECURITY_WARNING;
	}
	return rc;
}