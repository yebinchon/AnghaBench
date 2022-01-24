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
struct TYPE_2__ {struct fscrypt_master_key** data; } ;
struct key {TYPE_1__ payload; } ;
struct fscrypt_master_key {int /*<<< orphan*/  mk_refcount; int /*<<< orphan*/  mk_decrypted_inodes_lock; } ;
struct fscrypt_info {int /*<<< orphan*/  ci_master_key_link; struct key* ci_master_key; int /*<<< orphan*/ * ci_essiv_tfm; int /*<<< orphan*/ * ci_ctfm; int /*<<< orphan*/  ci_policy; scalar_t__ ci_direct_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fscrypt_info_cachep ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct key*) ; 
 int /*<<< orphan*/  FUNC5 (struct key*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct fscrypt_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct fscrypt_info *ci)
{
	struct key *key;

	if (!ci)
		return;

	if (ci->ci_direct_key) {
		FUNC3(ci->ci_direct_key);
	} else if ((ci->ci_ctfm != NULL || ci->ci_essiv_tfm != NULL) &&
		   !FUNC2(&ci->ci_policy)) {
		FUNC1(ci->ci_ctfm);
		FUNC0(ci->ci_essiv_tfm);
	}

	key = ci->ci_master_key;
	if (key) {
		struct fscrypt_master_key *mk = key->payload.data[0];

		/*
		 * Remove this inode from the list of inodes that were unlocked
		 * with the master key.
		 *
		 * In addition, if we're removing the last inode from a key that
		 * already had its secret removed, invalidate the key so that it
		 * gets removed from ->s_master_keys.
		 */
		FUNC9(&mk->mk_decrypted_inodes_lock);
		FUNC7(&ci->ci_master_key_link);
		FUNC10(&mk->mk_decrypted_inodes_lock);
		if (FUNC8(&mk->mk_refcount))
			FUNC4(key);
		FUNC5(key);
	}
	FUNC6(fscrypt_info_cachep, ci);
}