
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int * s_master_keys; } ;


 int key_put (int *) ;

void fscrypt_sb_free(struct super_block *sb)
{
 key_put(sb->s_master_keys);
 sb->s_master_keys = ((void*)0);
}
