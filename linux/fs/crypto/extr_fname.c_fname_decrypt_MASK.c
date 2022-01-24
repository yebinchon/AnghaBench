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
typedef  union fscrypt_iv {int dummy; } fscrypt_iv ;
struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct inode {struct fscrypt_info* i_crypt_info; } ;
struct fscrypt_str {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct fscrypt_info {struct crypto_skcipher* ci_ctfm; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  crypto_req_done ; 
 int /*<<< orphan*/  FUNC1 (struct skcipher_request*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (union fscrypt_iv*,int /*<<< orphan*/ ,struct fscrypt_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct skcipher_request* FUNC6 (struct crypto_skcipher*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct skcipher_request*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,int /*<<< orphan*/ ,union fscrypt_iv*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC11(struct inode *inode,
				const struct fscrypt_str *iname,
				struct fscrypt_str *oname)
{
	struct skcipher_request *req = NULL;
	FUNC0(wait);
	struct scatterlist src_sg, dst_sg;
	struct fscrypt_info *ci = inode->i_crypt_info;
	struct crypto_skcipher *tfm = ci->ci_ctfm;
	union fscrypt_iv iv;
	int res;

	/* Allocate request */
	req = FUNC6(tfm, GFP_NOFS);
	if (!req)
		return -ENOMEM;
	FUNC8(req,
		CRYPTO_TFM_REQ_MAY_BACKLOG | CRYPTO_TFM_REQ_MAY_SLEEP,
		crypto_req_done, &wait);

	/* Initialize IV */
	FUNC4(&iv, 0, ci);

	/* Create decryption request */
	FUNC5(&src_sg, iname->name, iname->len);
	FUNC5(&dst_sg, oname->name, oname->len);
	FUNC9(req, &src_sg, &dst_sg, iname->len, &iv);
	res = FUNC2(FUNC1(req), &wait);
	FUNC7(req);
	if (res < 0) {
		FUNC3(inode, "Filename decryption failed: %d", res);
		return res;
	}

	oname->len = FUNC10(oname->name, iname->len);
	return 0;
}