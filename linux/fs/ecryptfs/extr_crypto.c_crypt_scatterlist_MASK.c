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
struct TYPE_2__ {struct extent_crypt_result* data; } ;
struct skcipher_request {TYPE_1__ base; } ;
struct scatterlist {int dummy; } ;
struct extent_crypt_result {int rc; int /*<<< orphan*/  completion; } ;
struct ecryptfs_crypt_stat {int flags; int key_size; int /*<<< orphan*/  cs_tfm_mutex; int /*<<< orphan*/  key; int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int EBUSY ; 
 int ECRYPTFS_KEY_SET ; 
 int ECRYPTFS_STRUCT_INITIALIZED ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int ENCRYPT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int FUNC1 (struct skcipher_request*) ; 
 int FUNC2 (struct skcipher_request*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ ecryptfs_verbosity ; 
 int /*<<< orphan*/  extent_crypt_complete ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct skcipher_request* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC12 (struct skcipher_request*,int,int /*<<< orphan*/ ,struct extent_crypt_result*) ; 
 int /*<<< orphan*/  FUNC13 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,int,unsigned char*) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct ecryptfs_crypt_stat *crypt_stat,
			     struct scatterlist *dst_sg,
			     struct scatterlist *src_sg, int size,
			     unsigned char *iv, int op)
{
	struct skcipher_request *req = NULL;
	struct extent_crypt_result ecr;
	int rc = 0;

	FUNC0(!crypt_stat || !crypt_stat->tfm
	       || !(crypt_stat->flags & ECRYPTFS_STRUCT_INITIALIZED));
	if (FUNC14(ecryptfs_verbosity > 0)) {
		FUNC5(KERN_DEBUG, "Key size [%zd]; key:\n",
				crypt_stat->key_size);
		FUNC4(crypt_stat->key,
				  crypt_stat->key_size);
	}

	FUNC6(&ecr.completion);

	FUNC7(&crypt_stat->cs_tfm_mutex);
	req = FUNC10(crypt_stat->tfm, GFP_NOFS);
	if (!req) {
		FUNC8(&crypt_stat->cs_tfm_mutex);
		rc = -ENOMEM;
		goto out;
	}

	FUNC12(req,
			CRYPTO_TFM_REQ_MAY_BACKLOG | CRYPTO_TFM_REQ_MAY_SLEEP,
			extent_crypt_complete, &ecr);
	/* Consider doing this once, when the file is opened */
	if (!(crypt_stat->flags & ECRYPTFS_KEY_SET)) {
		rc = FUNC3(crypt_stat->tfm, crypt_stat->key,
					    crypt_stat->key_size);
		if (rc) {
			FUNC5(KERN_ERR,
					"Error setting key; rc = [%d]\n",
					rc);
			FUNC8(&crypt_stat->cs_tfm_mutex);
			rc = -EINVAL;
			goto out;
		}
		crypt_stat->flags |= ECRYPTFS_KEY_SET;
	}
	FUNC8(&crypt_stat->cs_tfm_mutex);
	FUNC13(req, src_sg, dst_sg, size, iv);
	rc = op == ENCRYPT ? FUNC2(req) :
			     FUNC1(req);
	if (rc == -EINPROGRESS || rc == -EBUSY) {
		struct extent_crypt_result *ecr = req->base.data;

		FUNC15(&ecr->completion);
		rc = ecr->rc;
		FUNC9(&ecr->completion);
	}
out:
	FUNC11(req);
	return rc;
}