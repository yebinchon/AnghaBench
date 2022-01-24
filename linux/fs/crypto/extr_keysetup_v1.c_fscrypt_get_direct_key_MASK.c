#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {int /*<<< orphan*/  const* master_key_descriptor; } ;
struct TYPE_5__ {TYPE_1__ v1; } ;
struct fscrypt_info {TYPE_3__* ci_mode; TYPE_2__ ci_policy; int /*<<< orphan*/  ci_inode; } ;
struct fscrypt_direct_key {int /*<<< orphan*/  dk_raw; int /*<<< orphan*/  dk_descriptor; int /*<<< orphan*/ * dk_ctfm; TYPE_3__* dk_mode; int /*<<< orphan*/  dk_refcount; } ;
struct TYPE_6__ {int /*<<< orphan*/  keysize; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct fscrypt_direct_key* FUNC0 (int) ; 
 int /*<<< orphan*/  FSCRYPT_KEY_DESCRIPTOR_SIZE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct fscrypt_direct_key* FUNC3 (struct fscrypt_direct_key*,int /*<<< orphan*/  const*,struct fscrypt_info const*) ; 
 int /*<<< orphan*/  FUNC4 (struct fscrypt_direct_key*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct fscrypt_direct_key* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct fscrypt_direct_key *
FUNC9(const struct fscrypt_info *ci, const u8 *raw_key)
{
	struct fscrypt_direct_key *dk;
	int err;

	/* Is there already a tfm for this key? */
	dk = FUNC3(NULL, raw_key, ci);
	if (dk)
		return dk;

	/* Nope, allocate one. */
	dk = FUNC6(sizeof(*dk), GFP_NOFS);
	if (!dk)
		return FUNC0(-ENOMEM);
	FUNC8(&dk->dk_refcount, 1);
	dk->dk_mode = ci->ci_mode;
	dk->dk_ctfm = FUNC5(ci->ci_mode, raw_key,
						ci->ci_inode);
	if (FUNC1(dk->dk_ctfm)) {
		err = FUNC2(dk->dk_ctfm);
		dk->dk_ctfm = NULL;
		goto err_free_dk;
	}
	FUNC7(dk->dk_descriptor, ci->ci_policy.v1.master_key_descriptor,
	       FSCRYPT_KEY_DESCRIPTOR_SIZE);
	FUNC7(dk->dk_raw, raw_key, ci->ci_mode->keysize);

	return FUNC3(dk, raw_key, ci);

err_free_dk:
	FUNC4(dk);
	return FUNC0(err);
}