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
struct super_block {int /*<<< orphan*/  s_umount; } ;
struct fscrypt_master_key {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct super_block*,struct fscrypt_master_key*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fscrypt_master_key*) ; 
 int FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb,
				       struct fscrypt_master_key *mk)
{
	int err1;
	int err2;

	/*
	 * An inode can't be evicted while it is dirty or has dirty pages.
	 * Thus, we first have to clean the inodes in ->mk_decrypted_inodes.
	 *
	 * Just do it the easy way: call sync_filesystem().  It's overkill, but
	 * it works, and it's more important to minimize the amount of caches we
	 * drop than the amount of data we sync.  Also, unprivileged users can
	 * already call sync_filesystem() via sys_syncfs() or sys_sync().
	 */
	FUNC1(&sb->s_umount);
	err1 = FUNC3(sb);
	FUNC4(&sb->s_umount);
	/* If a sync error occurs, still try to evict as much as possible. */

	/*
	 * Inodes are pinned by their dentries, so we have to evict their
	 * dentries.  shrink_dcache_sb() would suffice, but would be overkill
	 * and inappropriate for use by unprivileged users.  So instead go
	 * through the inodes' alias lists and try to evict each dentry.
	 */
	FUNC2(mk);

	/*
	 * evict_dentries_for_decrypted_inodes() already iput() each inode in
	 * the list; any inodes for which that dropped the last reference will
	 * have been evicted due to fscrypt_drop_inode() detecting the key
	 * removal and telling the VFS to evict the inode.  So to finish, we
	 * just need to check whether any inodes couldn't be evicted.
	 */
	err2 = FUNC0(sb, mk);

	return err1 ?: err2;
}