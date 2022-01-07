
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_mount_crypt_stat {int flags; int global_auth_tok_list_mutex; int global_auth_tok_list; } ;


 int ECRYPTFS_MOUNT_CRYPT_STAT_INITIALIZED ;
 int INIT_LIST_HEAD (int *) ;
 int memset (void*,int ,int) ;
 int mutex_init (int *) ;

__attribute__((used)) static void ecryptfs_init_mount_crypt_stat(
 struct ecryptfs_mount_crypt_stat *mount_crypt_stat)
{
 memset((void *)mount_crypt_stat, 0,
        sizeof(struct ecryptfs_mount_crypt_stat));
 INIT_LIST_HEAD(&mount_crypt_stat->global_auth_tok_list);
 mutex_init(&mount_crypt_stat->global_auth_tok_list_mutex);
 mount_crypt_stat->flags |= ECRYPTFS_MOUNT_CRYPT_STAT_INITIALIZED;
}
