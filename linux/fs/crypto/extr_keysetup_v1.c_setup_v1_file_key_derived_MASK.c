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
struct fscrypt_info {TYPE_1__* ci_mode; int /*<<< orphan*/  ci_nonce; } ;
struct TYPE_2__ {int /*<<< orphan*/  keysize; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fscrypt_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct fscrypt_info *ci,
				     const u8 *raw_master_key)
{
	u8 *derived_key;
	int err;

	/*
	 * This cannot be a stack buffer because it will be passed to the
	 * scatterlist crypto API during derive_key_aes().
	 */
	derived_key = FUNC2(ci->ci_mode->keysize, GFP_NOFS);
	if (!derived_key)
		return -ENOMEM;

	err = FUNC0(raw_master_key, ci->ci_nonce,
			     derived_key, ci->ci_mode->keysize);
	if (err)
		goto out;

	err = FUNC1(ci, derived_key);
out:
	FUNC3(derived_key);
	return err;
}