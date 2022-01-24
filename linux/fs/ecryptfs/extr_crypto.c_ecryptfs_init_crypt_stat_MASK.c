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
struct ecryptfs_crypt_stat {int /*<<< orphan*/  flags; struct crypto_shash* hash_tfm; int /*<<< orphan*/  cs_tfm_mutex; int /*<<< orphan*/  cs_mutex; int /*<<< orphan*/  keysig_list_mutex; int /*<<< orphan*/  keysig_list; } ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECRYPTFS_DEFAULT_HASH ; 
 int /*<<< orphan*/  ECRYPTFS_STRUCT_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct crypto_shash*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int FUNC2 (struct crypto_shash*) ; 
 struct crypto_shash* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct ecryptfs_crypt_stat *crypt_stat)
{
	struct crypto_shash *tfm;
	int rc;

	tfm = FUNC3(ECRYPTFS_DEFAULT_HASH, 0, 0);
	if (FUNC1(tfm)) {
		rc = FUNC2(tfm);
		FUNC4(KERN_ERR, "Error attempting to "
				"allocate crypto context; rc = [%d]\n",
				rc);
		return rc;
	}

	FUNC5((void *)crypt_stat, 0, sizeof(struct ecryptfs_crypt_stat));
	FUNC0(&crypt_stat->keysig_list);
	FUNC6(&crypt_stat->keysig_list_mutex);
	FUNC6(&crypt_stat->cs_mutex);
	FUNC6(&crypt_stat->cs_tfm_mutex);
	crypt_stat->hash_tfm = tfm;
	crypt_stat->flags |= ECRYPTFS_STRUCT_INITIALIZED;

	return 0;
}