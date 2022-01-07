
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct super_block {int dummy; } ;
typedef int s32 ;


 int __FAT_write (struct super_block*,int ,int ) ;
 int down (int *) ;
 int f_sem ;
 int up (int *) ;

int FAT_write(struct super_block *sb, u32 loc, u32 content)
{
 s32 ret;

 down(&f_sem);
 ret = __FAT_write(sb, loc, content);
 up(&f_sem);

 return ret;
}
