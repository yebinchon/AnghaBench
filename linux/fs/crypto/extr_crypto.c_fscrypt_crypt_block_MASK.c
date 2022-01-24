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
typedef  int /*<<< orphan*/  u64 ;
struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
struct inode {struct fscrypt_info* i_crypt_info; } ;
struct fscrypt_info {struct crypto_skcipher* ci_ctfm; } ;
struct crypto_skcipher {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  scalar_t__ fscrypt_direction_t ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 unsigned int FS_CRYPTO_BLOCK_SIZE ; 
 scalar_t__ FS_DECRYPT ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  crypto_req_done ; 
 int /*<<< orphan*/  FUNC2 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct skcipher_request*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode const*,char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (union fscrypt_iv*,int /*<<< orphan*/ ,struct fscrypt_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*,struct page*,unsigned int,unsigned int) ; 
 struct skcipher_request* FUNC9 (struct crypto_skcipher*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC11 (struct skcipher_request*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,union fscrypt_iv*) ; 
 int /*<<< orphan*/  wait ; 

int FUNC13(const struct inode *inode, fscrypt_direction_t rw,
			u64 lblk_num, struct page *src_page,
			struct page *dest_page, unsigned int len,
			unsigned int offs, gfp_t gfp_flags)
{
	union fscrypt_iv iv;
	struct skcipher_request *req = NULL;
	FUNC0(wait);
	struct scatterlist dst, src;
	struct fscrypt_info *ci = inode->i_crypt_info;
	struct crypto_skcipher *tfm = ci->ci_ctfm;
	int res = 0;

	if (FUNC1(len <= 0))
		return -EINVAL;
	if (FUNC1(len % FS_CRYPTO_BLOCK_SIZE != 0))
		return -EINVAL;

	FUNC6(&iv, lblk_num, ci);

	req = FUNC9(tfm, gfp_flags);
	if (!req)
		return -ENOMEM;

	FUNC11(
		req, CRYPTO_TFM_REQ_MAY_BACKLOG | CRYPTO_TFM_REQ_MAY_SLEEP,
		crypto_req_done, &wait);

	FUNC7(&dst, 1);
	FUNC8(&dst, dest_page, len, offs);
	FUNC7(&src, 1);
	FUNC8(&src, src_page, len, offs);
	FUNC12(req, &src, &dst, len, &iv);
	if (rw == FS_DECRYPT)
		res = FUNC4(FUNC2(req), &wait);
	else
		res = FUNC4(FUNC3(req), &wait);
	FUNC10(req);
	if (res) {
		FUNC5(inode, "%scryption failed for block %llu: %d",
			    (rw == FS_DECRYPT ? "De" : "En"), lblk_num, res);
		return res;
	}
	return 0;
}