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
struct fscrypt_master_key {int /*<<< orphan*/  mk_users; TYPE_2__ mk_spec; } ;

/* Variables and functions */
 int FSCRYPT_MK_USER_DESCRIPTION_SIZE ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int KEY_POS_SEARCH ; 
 int KEY_USR_VIEW ; 
 int FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 struct key* FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct key*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct key*) ; 
 int /*<<< orphan*/  key_type_fscrypt_user ; 

__attribute__((used)) static int FUNC9(struct fscrypt_master_key *mk)
{
	char description[FSCRYPT_MK_USER_DESCRIPTION_SIZE];
	struct key *mk_user;
	int err;

	FUNC5(description, mk->mk_spec.u.identifier);
	mk_user = FUNC6(&key_type_fscrypt_user, description,
			    FUNC3(), FUNC4(), FUNC2(),
			    KEY_POS_SEARCH | KEY_USR_VIEW, 0, NULL);
	if (FUNC0(mk_user))
		return FUNC1(mk_user);

	err = FUNC7(mk_user, NULL, 0, mk->mk_users, NULL);
	FUNC8(mk_user);
	return err;
}