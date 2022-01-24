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
struct ecryptfs_crypt_stat {int key_size; int /*<<< orphan*/  cs_tfm_mutex; int /*<<< orphan*/ * tfm; int /*<<< orphan*/  cipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_FORBID_WEAK_KEYS ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (char**,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct ecryptfs_crypt_stat *crypt_stat)
{
	char *full_alg_name;
	int rc = -EINVAL;

	FUNC5(KERN_DEBUG,
			"Initializing cipher [%s]; strlen = [%d]; "
			"key_size_bits = [%zd]\n",
			crypt_stat->cipher, (int)FUNC9(crypt_stat->cipher),
			crypt_stat->key_size << 3);
	FUNC7(&crypt_stat->cs_tfm_mutex);
	if (crypt_stat->tfm) {
		rc = 0;
		goto out_unlock;
	}
	rc = FUNC4(&full_alg_name,
						    crypt_stat->cipher, "cbc");
	if (rc)
		goto out_unlock;
	crypt_stat->tfm = FUNC2(full_alg_name, 0, 0);
	if (FUNC0(crypt_stat->tfm)) {
		rc = FUNC1(crypt_stat->tfm);
		crypt_stat->tfm = NULL;
		FUNC5(KERN_ERR, "cryptfs: init_crypt_ctx(): "
				"Error initializing cipher [%s]\n",
				full_alg_name);
		goto out_free;
	}
	FUNC3(crypt_stat->tfm,
				  CRYPTO_TFM_REQ_FORBID_WEAK_KEYS);
	rc = 0;
out_free:
	FUNC6(full_alg_name);
out_unlock:
	FUNC8(&crypt_stat->cs_tfm_mutex);
	return rc;
}