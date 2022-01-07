
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int __efivar_entry_iter (int ,int *,int *,int *) ;
 int efivarfs_destroy ;
 int efivarfs_list ;
 int kill_litter_super (struct super_block*) ;

__attribute__((used)) static void efivarfs_kill_sb(struct super_block *sb)
{
 kill_litter_super(sb);


 __efivar_entry_iter(efivarfs_destroy, &efivarfs_list, ((void*)0), ((void*)0));
}
