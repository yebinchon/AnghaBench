
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct super_block {int dummy; } ;
typedef int sector_t ;


 int * __buf_getblk (struct super_block*,int ) ;
 int b_sem ;
 int down (int *) ;
 int up (int *) ;

u8 *buf_getblk(struct super_block *sb, sector_t sec)
{
 u8 *buf;

 down(&b_sem);
 buf = __buf_getblk(sb, sec);
 up(&b_sem);

 return buf;
}
