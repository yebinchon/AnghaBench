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
struct super_block {int /*<<< orphan*/  s_master_keys; } ;
struct key {int dummy; } ;
struct fscrypt_key_specifier {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOKEY ; 
 struct key* FUNC0 (int /*<<< orphan*/ ) ; 
 int FSCRYPT_MK_DESCRIPTION_SIZE ; 
 struct key* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct fscrypt_key_specifier const*) ; 
 int /*<<< orphan*/  key_type_fscrypt ; 
 struct key* FUNC3 (struct key*,int /*<<< orphan*/ *,char*) ; 

struct key *FUNC4(struct super_block *sb,
				    const struct fscrypt_key_specifier *mk_spec)
{
	struct key *keyring;
	char description[FSCRYPT_MK_DESCRIPTION_SIZE];

	/* pairs with smp_store_release() in allocate_filesystem_keyring() */
	keyring = FUNC1(sb->s_master_keys);
	if (keyring == NULL)
		return FUNC0(-ENOKEY); /* No keyring yet, so no keys yet. */

	FUNC2(description, mk_spec);
	return FUNC3(keyring, &key_type_fscrypt, description);
}