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
typedef  int /*<<< orphan*/  u8 ;
struct fscrypt_info {struct crypto_cipher* ci_essiv_tfm; TYPE_1__* ci_mode; } ;
struct crypto_cipher {int dummy; } ;
typedef  int /*<<< orphan*/  salt ;
struct TYPE_2__ {scalar_t__ ivsize; } ;

/* Variables and functions */
 scalar_t__ AES_BLOCK_SIZE ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct crypto_cipher*) ; 
 int FUNC1 (struct crypto_cipher*) ; 
 int SHA256_DIGEST_SIZE ; 
 scalar_t__ FUNC2 (int) ; 
 struct crypto_cipher* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct crypto_cipher*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct fscrypt_info *ci, const u8 *raw_key,
				int keysize)
{
	int err;
	struct crypto_cipher *essiv_tfm;
	u8 salt[SHA256_DIGEST_SIZE];

	if (FUNC2(ci->ci_mode->ivsize != AES_BLOCK_SIZE))
		return -EINVAL;

	essiv_tfm = FUNC3("aes", 0, 0);
	if (FUNC0(essiv_tfm))
		return FUNC1(essiv_tfm);

	ci->ci_essiv_tfm = essiv_tfm;

	err = FUNC5(raw_key, keysize, salt);
	if (err)
		goto out;

	/*
	 * Using SHA256 to derive the salt/key will result in AES-256 being
	 * used for IV generation. File contents encryption will still use the
	 * configured keysize (AES-128) nevertheless.
	 */
	err = FUNC4(essiv_tfm, salt, sizeof(salt));
	if (err)
		goto out;

out:
	FUNC6(salt, sizeof(salt));
	return err;
}