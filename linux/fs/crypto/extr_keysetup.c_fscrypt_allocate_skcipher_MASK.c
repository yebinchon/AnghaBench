#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct inode {int dummy; } ;
struct fscrypt_mode {int logged_impl_name; int /*<<< orphan*/  keysize; int /*<<< orphan*/  friendly_name; int /*<<< orphan*/  cipher_str; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  cra_driver_name; } ;
struct TYPE_4__ {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_FORBID_WEAK_KEYS ; 
 int /*<<< orphan*/  ENOENT ; 
 int ENOPKG ; 
 struct crypto_skcipher* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_skcipher*) ; 
 TYPE_2__* FUNC5 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_skcipher*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct crypto_skcipher*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

struct crypto_skcipher *FUNC12(struct fscrypt_mode *mode,
						  const u8 *raw_key,
						  const struct inode *inode)
{
	struct crypto_skcipher *tfm;
	int err;

	tfm = FUNC3(mode->cipher_str, 0, 0);
	if (FUNC1(tfm)) {
		if (FUNC2(tfm) == -ENOENT) {
			FUNC9(inode,
				     "Missing crypto API support for %s (API name: \"%s\")",
				     mode->friendly_name, mode->cipher_str);
			return FUNC0(-ENOPKG);
		}
		FUNC8(inode, "Error allocating '%s' transform: %ld",
			    mode->cipher_str, FUNC2(tfm));
		return tfm;
	}
	if (FUNC11(!mode->logged_impl_name)) {
		/*
		 * fscrypt performance can vary greatly depending on which
		 * crypto algorithm implementation is used.  Help people debug
		 * performance problems by logging the ->cra_driver_name the
		 * first time a mode is used.  Note that multiple threads can
		 * race here, but it doesn't really matter.
		 */
		mode->logged_impl_name = true;
		FUNC10("fscrypt: %s using implementation \"%s\"\n",
			mode->friendly_name,
			FUNC5(tfm)->base.cra_driver_name);
	}
	FUNC6(tfm, CRYPTO_TFM_REQ_FORBID_WEAK_KEYS);
	err = FUNC7(tfm, raw_key, mode->keysize);
	if (err)
		goto err_free_tfm;

	return tfm;

err_free_tfm:
	FUNC4(tfm);
	return FUNC0(err);
}