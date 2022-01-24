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
typedef  int /*<<< orphan*/  const u8 ;
struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_FORBID_WEAK_KEYS ; 
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FS_KEY_DERIVATION_NONCE_SIZE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (struct crypto_skcipher*) ; 
 int FUNC2 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  crypto_req_done ; 
 int /*<<< orphan*/  FUNC5 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_skcipher*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct crypto_skcipher*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*,int /*<<< orphan*/  const*,unsigned int) ; 
 struct skcipher_request* FUNC10 (struct crypto_skcipher*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC12 (struct skcipher_request*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC14(const u8 *master_key,
			  const u8 nonce[FS_KEY_DERIVATION_NONCE_SIZE],
			  u8 *derived_key, unsigned int derived_keysize)
{
	int res = 0;
	struct skcipher_request *req = NULL;
	FUNC0(wait);
	struct scatterlist src_sg, dst_sg;
	struct crypto_skcipher *tfm = FUNC3("ecb(aes)", 0, 0);

	if (FUNC1(tfm)) {
		res = FUNC2(tfm);
		tfm = NULL;
		goto out;
	}
	FUNC6(tfm, CRYPTO_TFM_REQ_FORBID_WEAK_KEYS);
	req = FUNC10(tfm, GFP_NOFS);
	if (!req) {
		res = -ENOMEM;
		goto out;
	}
	FUNC12(req,
			CRYPTO_TFM_REQ_MAY_BACKLOG | CRYPTO_TFM_REQ_MAY_SLEEP,
			crypto_req_done, &wait);
	res = FUNC7(tfm, nonce, FS_KEY_DERIVATION_NONCE_SIZE);
	if (res < 0)
		goto out;

	FUNC9(&src_sg, master_key, derived_keysize);
	FUNC9(&dst_sg, derived_key, derived_keysize);
	FUNC13(req, &src_sg, &dst_sg, derived_keysize,
				   NULL);
	res = FUNC8(FUNC5(req), &wait);
out:
	FUNC11(req);
	FUNC4(tfm);
	return res;
}