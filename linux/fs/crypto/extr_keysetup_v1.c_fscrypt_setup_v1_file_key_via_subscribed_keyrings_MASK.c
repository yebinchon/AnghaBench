#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct key {int /*<<< orphan*/  sem; } ;
struct fscrypt_key {int /*<<< orphan*/  raw; } ;
struct TYPE_10__ {int /*<<< orphan*/  master_key_descriptor; } ;
struct TYPE_11__ {TYPE_4__ v1; } ;
struct fscrypt_info {TYPE_6__* ci_mode; TYPE_5__ ci_policy; TYPE_3__* ci_inode; } ;
struct TYPE_12__ {int /*<<< orphan*/  keysize; } ;
struct TYPE_9__ {TYPE_2__* i_sb; } ;
struct TYPE_8__ {TYPE_1__* s_cop; } ;
struct TYPE_7__ {scalar_t__ key_prefix; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOKEY ; 
 struct key* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FSCRYPT_KEY_DESC_PREFIX ; 
 scalar_t__ FUNC1 (struct key*) ; 
 int FUNC2 (struct key*) ; 
 struct key* FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fscrypt_key const**) ; 
 int FUNC4 (struct fscrypt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct key*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct fscrypt_info *ci)
{
	struct key *key;
	const struct fscrypt_key *payload;
	int err;

	key = FUNC3(FSCRYPT_KEY_DESC_PREFIX,
					ci->ci_policy.v1.master_key_descriptor,
					ci->ci_mode->keysize, &payload);
	if (key == FUNC0(-ENOKEY) && ci->ci_inode->i_sb->s_cop->key_prefix) {
		key = FUNC3(ci->ci_inode->i_sb->s_cop->key_prefix,
						ci->ci_policy.v1.master_key_descriptor,
						ci->ci_mode->keysize, &payload);
	}
	if (FUNC1(key))
		return FUNC2(key);

	err = FUNC4(ci, payload->raw);
	FUNC6(&key->sem);
	FUNC5(key);
	return err;
}