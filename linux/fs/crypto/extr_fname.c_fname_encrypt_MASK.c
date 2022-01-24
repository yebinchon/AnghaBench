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
typedef  int /*<<< orphan*/  u8 ;
struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct qstr {unsigned int len; int /*<<< orphan*/  name; } ;
struct inode {struct fscrypt_info* i_crypt_info; } ;
struct fscrypt_info {struct crypto_skcipher* ci_ctfm; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  crypto_req_done ; 
 int /*<<< orphan*/  FUNC2 (struct skcipher_request*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (union fscrypt_iv*,int /*<<< orphan*/ ,struct fscrypt_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*,int /*<<< orphan*/ *,unsigned int) ; 
 struct skcipher_request* FUNC9 (struct crypto_skcipher*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC11 (struct skcipher_request*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,union fscrypt_iv*) ; 
 int /*<<< orphan*/  wait ; 

int FUNC13(struct inode *inode, const struct qstr *iname,
		  u8 *out, unsigned int olen)
{
	struct skcipher_request *req = NULL;
	FUNC0(wait);
	struct fscrypt_info *ci = inode->i_crypt_info;
	struct crypto_skcipher *tfm = ci->ci_ctfm;
	union fscrypt_iv iv;
	struct scatterlist sg;
	int res;

	/*
	 * Copy the filename to the output buffer for encrypting in-place and
	 * pad it with the needed number of NUL bytes.
	 */
	if (FUNC1(olen < iname->len))
		return -ENOBUFS;
	FUNC6(out, iname->name, iname->len);
	FUNC7(out + iname->len, 0, olen - iname->len);

	/* Initialize the IV */
	FUNC5(&iv, 0, ci);

	/* Set up the encryption request */
	req = FUNC9(tfm, GFP_NOFS);
	if (!req)
		return -ENOMEM;
	FUNC11(req,
			CRYPTO_TFM_REQ_MAY_BACKLOG | CRYPTO_TFM_REQ_MAY_SLEEP,
			crypto_req_done, &wait);
	FUNC8(&sg, out, olen);
	FUNC12(req, &sg, &sg, olen, &iv);

	/* Do the encryption */
	res = FUNC3(FUNC2(req), &wait);
	FUNC10(req);
	if (res < 0) {
		FUNC4(inode, "Filename encryption failed: %d", res);
		return res;
	}

	return 0;
}