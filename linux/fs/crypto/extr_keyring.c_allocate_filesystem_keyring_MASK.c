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
struct super_block {scalar_t__ s_master_keys; } ;
struct key {int dummy; } ;

/* Variables and functions */
 int FSCRYPT_FS_KEYRING_DESCRIPTION_SIZE ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int /*<<< orphan*/  KEY_ALLOC_NOT_IN_QUOTA ; 
 int KEY_POS_SEARCH ; 
 int KEY_USR_READ ; 
 int KEY_USR_SEARCH ; 
 int KEY_USR_VIEW ; 
 int FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,struct super_block*) ; 
 struct key* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,struct key*) ; 

__attribute__((used)) static int FUNC6(struct super_block *sb)
{
	char description[FSCRYPT_FS_KEYRING_DESCRIPTION_SIZE];
	struct key *keyring;

	if (sb->s_master_keys)
		return 0;

	FUNC3(description, sb);
	keyring = FUNC4(description, GLOBAL_ROOT_UID, GLOBAL_ROOT_GID,
				FUNC2(), KEY_POS_SEARCH |
				  KEY_USR_SEARCH | KEY_USR_READ | KEY_USR_VIEW,
				KEY_ALLOC_NOT_IN_QUOTA, NULL, NULL);
	if (FUNC0(keyring))
		return FUNC1(keyring);

	/* Pairs with READ_ONCE() in fscrypt_find_master_key() */
	FUNC5(&sb->s_master_keys, keyring);
	return 0;
}