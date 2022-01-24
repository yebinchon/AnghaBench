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
struct ecryptfs_crypt_stat {char* root_iv; int iv_bytes; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECRYPTFS_MAX_IV_BYTES ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int MD5_DIGEST_SIZE ; 
 int FUNC0 (char*,struct ecryptfs_crypt_stat*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ecryptfs_verbosity ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(char *iv, struct ecryptfs_crypt_stat *crypt_stat,
		       loff_t offset)
{
	int rc = 0;
	char dst[MD5_DIGEST_SIZE];
	char src[ECRYPTFS_MAX_IV_BYTES + 16];

	if (FUNC6(ecryptfs_verbosity > 0)) {
		FUNC2(KERN_DEBUG, "root iv:\n");
		FUNC1(crypt_stat->root_iv, crypt_stat->iv_bytes);
	}
	/* TODO: It is probably secure to just cast the least
	 * significant bits of the root IV into an unsigned long and
	 * add the offset to that rather than go through all this
	 * hashing business. -Halcrow */
	FUNC3(src, crypt_stat->root_iv, crypt_stat->iv_bytes);
	FUNC4((src + crypt_stat->iv_bytes), 0, 16);
	FUNC5((src + crypt_stat->iv_bytes), 16, "%lld", offset);
	if (FUNC6(ecryptfs_verbosity > 0)) {
		FUNC2(KERN_DEBUG, "source:\n");
		FUNC1(src, (crypt_stat->iv_bytes + 16));
	}
	rc = FUNC0(dst, crypt_stat, src,
				    (crypt_stat->iv_bytes + 16));
	if (rc) {
		FUNC2(KERN_WARNING, "Error attempting to compute "
				"MD5 while generating IV for a page\n");
		goto out;
	}
	FUNC3(iv, dst, crypt_stat->iv_bytes);
	if (FUNC6(ecryptfs_verbosity > 0)) {
		FUNC2(KERN_DEBUG, "derived iv:\n");
		FUNC1(iv, crypt_stat->iv_bytes);
	}
out:
	return rc;
}