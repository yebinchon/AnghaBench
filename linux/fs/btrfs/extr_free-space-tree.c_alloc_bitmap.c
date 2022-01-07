
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GFP_KERNEL ;
 unsigned long* kvzalloc (int ,int ) ;
 int memalloc_nofs_restore (unsigned int) ;
 unsigned int memalloc_nofs_save () ;
 int round_up (int ,int) ;

__attribute__((used)) static unsigned long *alloc_bitmap(u32 bitmap_size)
{
 unsigned long *ret;
 unsigned int nofs_flag;
 u32 bitmap_rounded_size = round_up(bitmap_size, sizeof(unsigned long));
 nofs_flag = memalloc_nofs_save();
 ret = kvzalloc(bitmap_rounded_size, GFP_KERNEL);
 memalloc_nofs_restore(nofs_flag);
 return ret;
}
