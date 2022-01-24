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
typedef  int /*<<< orphan*/  u32 ;
struct ecryptfs_mount_crypt_stat {int /*<<< orphan*/  global_auth_tok_list_mutex; int /*<<< orphan*/  global_auth_tok_list; } ;
struct ecryptfs_global_auth_tok {char* sig; int /*<<< orphan*/  mount_crypt_stat_list; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 size_t ECRYPTFS_SIG_SIZE_HEX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ecryptfs_global_auth_tok_cache ; 
 struct ecryptfs_global_auth_tok* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct ecryptfs_mount_crypt_stat *mount_crypt_stat,
			     char *sig, u32 global_auth_tok_flags)
{
	struct ecryptfs_global_auth_tok *new_auth_tok;

	new_auth_tok = FUNC0(ecryptfs_global_auth_tok_cache,
					GFP_KERNEL);
	if (!new_auth_tok)
		return -ENOMEM;

	FUNC2(new_auth_tok->sig, sig, ECRYPTFS_SIG_SIZE_HEX);
	new_auth_tok->flags = global_auth_tok_flags;
	new_auth_tok->sig[ECRYPTFS_SIG_SIZE_HEX] = '\0';
	FUNC3(&mount_crypt_stat->global_auth_tok_list_mutex);
	FUNC1(&new_auth_tok->mount_crypt_stat_list,
		 &mount_crypt_stat->global_auth_tok_list);
	FUNC4(&mount_crypt_stat->global_auth_tok_list_mutex);
	return 0;
}