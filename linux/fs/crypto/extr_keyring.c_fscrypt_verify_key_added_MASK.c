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
struct super_block {int dummy; } ;
struct TYPE_3__ {struct fscrypt_master_key** data; } ;
struct key {TYPE_1__ payload; } ;
struct fscrypt_master_key {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  identifier; } ;
struct fscrypt_key_specifier {TYPE_2__ u; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_FOWNER ; 
 int ENOKEY ; 
 int /*<<< orphan*/  FSCRYPT_KEY_IDENTIFIER_SIZE ; 
 int /*<<< orphan*/  FSCRYPT_KEY_SPEC_TYPE_IDENTIFIER ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int FUNC1 (struct key*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct key* FUNC3 (struct fscrypt_master_key*) ; 
 struct key* FUNC4 (struct super_block*,struct fscrypt_key_specifier*) ; 
 int /*<<< orphan*/  FUNC5 (struct key*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int FUNC7(struct super_block *sb,
			     const u8 identifier[FSCRYPT_KEY_IDENTIFIER_SIZE])
{
	struct fscrypt_key_specifier mk_spec;
	struct key *key, *mk_user;
	struct fscrypt_master_key *mk;
	int err;

	mk_spec.type = FSCRYPT_KEY_SPEC_TYPE_IDENTIFIER;
	FUNC6(mk_spec.u.identifier, identifier, FSCRYPT_KEY_IDENTIFIER_SIZE);

	key = FUNC4(sb, &mk_spec);
	if (FUNC0(key)) {
		err = FUNC1(key);
		goto out;
	}
	mk = key->payload.data[0];
	mk_user = FUNC3(mk);
	if (FUNC0(mk_user)) {
		err = FUNC1(mk_user);
	} else {
		FUNC5(mk_user);
		err = 0;
	}
	FUNC5(key);
out:
	if (err == -ENOKEY && FUNC2(CAP_FOWNER))
		err = 0;
	return err;
}