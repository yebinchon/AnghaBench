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
struct super_block {int /*<<< orphan*/  s_master_keys; } ;
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;
struct key {int /*<<< orphan*/  sem; TYPE_1__ payload; } ;
struct fscrypt_master_key_secret {int dummy; } ;
struct fscrypt_key_specifier {int dummy; } ;
typedef  int /*<<< orphan*/  DEFINE_MUTEX ;

/* Variables and functions */
 int ENOKEY ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int KEY_DEAD ; 
 int FUNC1 (struct key*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct fscrypt_master_key_secret*) ; 
 int FUNC3 (struct fscrypt_master_key_secret*,struct fscrypt_key_specifier const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct key* FUNC6 (struct super_block*,struct fscrypt_key_specifier const*) ; 
 int /*<<< orphan*/  FUNC7 (struct key*) ; 
 int /*<<< orphan*/  FUNC8 (struct key*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct super_block *sb,
			  struct fscrypt_master_key_secret *secret,
			  const struct fscrypt_key_specifier *mk_spec)
{
	static DEFINE_MUTEX(fscrypt_add_key_mutex);
	struct key *key;
	int err;

	FUNC9(&fscrypt_add_key_mutex); /* serialize find + link */
retry:
	key = FUNC6(sb, mk_spec);
	if (FUNC0(key)) {
		err = FUNC1(key);
		if (err != -ENOKEY)
			goto out_unlock;
		/* Didn't find the key in ->s_master_keys.  Add it. */
		err = FUNC4(sb);
		if (err)
			goto out_unlock;
		err = FUNC3(secret, mk_spec, sb->s_master_keys);
	} else {
		/*
		 * Found the key in ->s_master_keys.  Re-add the secret if
		 * needed, and add the user to ->mk_users if needed.
		 */
		FUNC5(&key->sem);
		err = FUNC2(key->payload.data[0], secret);
		FUNC11(&key->sem);
		if (err == KEY_DEAD) {
			/* Key being removed or needs to be removed */
			FUNC7(key);
			FUNC8(key);
			goto retry;
		}
		FUNC8(key);
	}
out_unlock:
	FUNC10(&fscrypt_add_key_mutex);
	return err;
}