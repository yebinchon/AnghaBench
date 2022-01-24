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
struct fscrypt_master_key {int /*<<< orphan*/  mk_users; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct key*) ; 
 int FUNC1 (struct key*) ; 
 struct key* FUNC2 (struct fscrypt_master_key*) ; 
 int /*<<< orphan*/  FUNC3 (struct key*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct key*) ; 

__attribute__((used)) static int FUNC5(struct fscrypt_master_key *mk)
{
	struct key *mk_user;
	int err;

	mk_user = FUNC2(mk);
	if (FUNC0(mk_user))
		return FUNC1(mk_user);
	err = FUNC4(mk->mk_users, mk_user);
	FUNC3(mk_user);
	return err;
}