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
struct key {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  identifier; } ;
struct TYPE_4__ {TYPE_1__ u; } ;
struct fscrypt_master_key {struct key* mk_users; TYPE_2__ mk_spec; } ;

/* Variables and functions */
 int FSCRYPT_MK_USERS_DESCRIPTION_SIZE ; 
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
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 struct key* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct fscrypt_master_key *mk)
{
	char description[FSCRYPT_MK_USERS_DESCRIPTION_SIZE];
	struct key *keyring;

	FUNC3(description,
					    mk->mk_spec.u.identifier);
	keyring = FUNC4(description, GLOBAL_ROOT_UID, GLOBAL_ROOT_GID,
				FUNC2(), KEY_POS_SEARCH |
				  KEY_USR_SEARCH | KEY_USR_READ | KEY_USR_VIEW,
				KEY_ALLOC_NOT_IN_QUOTA, NULL, NULL);
	if (FUNC0(keyring))
		return FUNC1(keyring);

	mk->mk_users = keyring;
	return 0;
}