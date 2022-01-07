
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_umount; } ;
struct fscrypt_master_key {int dummy; } ;


 int check_for_busy_inodes (struct super_block*,struct fscrypt_master_key*) ;
 int down_read (int *) ;
 int evict_dentries_for_decrypted_inodes (struct fscrypt_master_key*) ;
 int sync_filesystem (struct super_block*) ;
 int up_read (int *) ;

__attribute__((used)) static int try_to_lock_encrypted_files(struct super_block *sb,
           struct fscrypt_master_key *mk)
{
 int err1;
 int err2;
 down_read(&sb->s_umount);
 err1 = sync_filesystem(sb);
 up_read(&sb->s_umount);
 evict_dentries_for_decrypted_inodes(mk);
 err2 = check_for_busy_inodes(sb, mk);

 return err1 ?: err2;
}
