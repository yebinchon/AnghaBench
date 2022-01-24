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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key_type_fscrypt_user ; 
 struct key* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static struct key *FUNC2(struct fscrypt_master_key *mk)
{
	char description[FSCRYPT_MK_USER_DESCRIPTION_SIZE];

	FUNC0(description, mk->mk_spec.u.identifier);
	return FUNC1(mk->mk_users, &key_type_fscrypt_user,
				      description);
}