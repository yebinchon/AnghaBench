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
typedef  int /*<<< orphan*/  u8 ;
struct fscrypt_mode {int /*<<< orphan*/  keysize; scalar_t__ needs_essiv; } ;
struct fscrypt_info {int /*<<< orphan*/  ci_inode; struct crypto_skcipher* ci_ctfm; struct fscrypt_mode* ci_mode; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_skcipher*) ; 
 int FUNC1 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC2 (struct fscrypt_mode*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (struct fscrypt_info*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int FUNC5(struct fscrypt_info *ci, const u8 *derived_key)
{
	struct fscrypt_mode *mode = ci->ci_mode;
	struct crypto_skcipher *ctfm;
	int err;

	ctfm = FUNC2(mode, derived_key, ci->ci_inode);
	if (FUNC0(ctfm))
		return FUNC1(ctfm);

	ci->ci_ctfm = ctfm;

	if (mode->needs_essiv) {
		err = FUNC4(ci, derived_key, mode->keysize);
		if (err) {
			FUNC3(ci->ci_inode,
				     "Error initializing ESSIV generator: %d",
				     err);
			return err;
		}
	}
	return 0;
}