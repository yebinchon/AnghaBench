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
struct fscrypt_mode {int /*<<< orphan*/  needs_essiv; int /*<<< orphan*/  friendly_name; } ;
struct TYPE_3__ {scalar_t__ contents_encryption_mode; scalar_t__ filenames_encryption_mode; } ;
struct TYPE_4__ {TYPE_1__ v1; } ;
struct fscrypt_info {int /*<<< orphan*/  ci_ctfm; struct fscrypt_direct_key* ci_direct_key; int /*<<< orphan*/  ci_inode; TYPE_2__ ci_policy; struct fscrypt_mode* ci_mode; } ;
struct fscrypt_direct_key {int /*<<< orphan*/  dk_ctfm; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct fscrypt_direct_key*) ; 
 int FUNC1 (struct fscrypt_direct_key*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct fscrypt_direct_key* FUNC3 (struct fscrypt_info*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (struct fscrypt_mode const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC6(struct fscrypt_info *ci,
				    const u8 *raw_master_key)
{
	const struct fscrypt_mode *mode = ci->ci_mode;
	struct fscrypt_direct_key *dk;

	if (!FUNC4(mode)) {
		FUNC5(ci->ci_inode,
			     "Direct key mode not allowed with %s",
			     mode->friendly_name);
		return -EINVAL;
	}

	if (ci->ci_policy.v1.contents_encryption_mode !=
	    ci->ci_policy.v1.filenames_encryption_mode) {
		FUNC5(ci->ci_inode,
			     "Direct key mode not allowed with different contents and filenames modes");
		return -EINVAL;
	}

	/* ESSIV implies 16-byte IVs which implies !DIRECT_KEY */
	if (FUNC2(mode->needs_essiv))
		return -EINVAL;

	dk = FUNC3(ci, raw_master_key);
	if (FUNC0(dk))
		return FUNC1(dk);
	ci->ci_direct_key = dk;
	ci->ci_ctfm = dk->dk_ctfm;
	return 0;
}