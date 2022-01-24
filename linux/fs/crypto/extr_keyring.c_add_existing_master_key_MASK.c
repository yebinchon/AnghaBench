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
struct key {int dummy; } ;
struct fscrypt_master_key_secret {int dummy; } ;
struct fscrypt_master_key {int /*<<< orphan*/  mk_secret_sem; int /*<<< orphan*/  mk_secret; int /*<<< orphan*/  mk_refcount; scalar_t__ mk_users; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOKEY ; 
 struct key* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct key*) ; 
 int KEY_DEAD ; 
 int FUNC2 (struct key*) ; 
 int FUNC3 (struct fscrypt_master_key*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct key* FUNC5 (struct fscrypt_master_key*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct key*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct fscrypt_master_key_secret*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct fscrypt_master_key *mk,
				   struct fscrypt_master_key_secret *secret)
{
	struct key *mk_user;
	bool rekey;
	int err;

	/*
	 * If the current user is already in ->mk_users, then there's nothing to
	 * do.  (Not applicable for v1 policy keys, which have NULL ->mk_users.)
	 */
	if (mk->mk_users) {
		mk_user = FUNC5(mk);
		if (mk_user != FUNC0(-ENOKEY)) {
			if (FUNC1(mk_user))
				return FUNC2(mk_user);
			FUNC7(mk_user);
			return 0;
		}
	}

	/* If we'll be re-adding ->mk_secret, try to take the reference. */
	rekey = !FUNC6(&mk->mk_secret);
	if (rekey && !FUNC10(&mk->mk_refcount))
		return KEY_DEAD;

	/* Add the current user to ->mk_users, if applicable. */
	if (mk->mk_users) {
		err = FUNC3(mk);
		if (err) {
			if (rekey && FUNC9(&mk->mk_refcount))
				return KEY_DEAD;
			return err;
		}
	}

	/* Re-add the secret if needed. */
	if (rekey) {
		FUNC4(&mk->mk_secret_sem);
		FUNC8(&mk->mk_secret, secret);
		FUNC11(&mk->mk_secret_sem);
	}
	return 0;
}