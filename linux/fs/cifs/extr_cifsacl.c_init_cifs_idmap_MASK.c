#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct key {int /*<<< orphan*/  flags; } ;
struct cred {int /*<<< orphan*/  jit_keyring; struct key* thread_keyring; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int /*<<< orphan*/  KEY_ALLOC_NOT_IN_QUOTA ; 
 int /*<<< orphan*/  KEY_FLAG_ROOT_CAN_CLEAR ; 
 int KEY_POS_ALL ; 
 int KEY_POS_SETATTR ; 
 int /*<<< orphan*/  KEY_REQKEY_DEFL_THREAD_KEYRING ; 
 int KEY_USR_READ ; 
 int KEY_USR_VIEW ; 
 int FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ cifs_idmap_key_type ; 
 int /*<<< orphan*/  FUNC3 (struct key*) ; 
 int /*<<< orphan*/  FUNC4 (struct key*) ; 
 struct key* FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cred*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct cred* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct cred*) ; 
 int FUNC8 (TYPE_1__*) ; 
 struct cred* root_cred ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC10(void)
{
	struct cred *cred;
	struct key *keyring;
	int ret;

	FUNC2(FYI, "Registering the %s key type\n",
		 cifs_idmap_key_type.name);

	/* create an override credential set with a special thread keyring in
	 * which requests are cached
	 *
	 * this is used to prevent malicious redirections from being installed
	 * with add_key().
	 */
	cred = FUNC6(NULL);
	if (!cred)
		return -ENOMEM;

	keyring = FUNC5(".cifs_idmap",
				GLOBAL_ROOT_UID, GLOBAL_ROOT_GID, cred,
				(KEY_POS_ALL & ~KEY_POS_SETATTR) |
				KEY_USR_VIEW | KEY_USR_READ,
				KEY_ALLOC_NOT_IN_QUOTA, NULL, NULL);
	if (FUNC0(keyring)) {
		ret = FUNC1(keyring);
		goto failed_put_cred;
	}

	ret = FUNC8(&cifs_idmap_key_type);
	if (ret < 0)
		goto failed_put_key;

	/* instruct request_key() to use this special keyring as a cache for
	 * the results it looks up */
	FUNC9(KEY_FLAG_ROOT_CAN_CLEAR, &keyring->flags);
	cred->thread_keyring = keyring;
	cred->jit_keyring = KEY_REQKEY_DEFL_THREAD_KEYRING;
	root_cred = cred;

	FUNC2(FYI, "cifs idmap keyring: %d\n", FUNC4(keyring));
	return 0;

failed_put_key:
	FUNC3(keyring);
failed_put_cred:
	FUNC7(cred);
	return ret;
}