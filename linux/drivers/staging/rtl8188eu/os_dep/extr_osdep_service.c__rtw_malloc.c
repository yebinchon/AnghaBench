
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 scalar_t__ in_interrupt () ;
 int * kmalloc (int ,int ) ;

u8 *_rtw_malloc(u32 sz)
{
 return kmalloc(sz, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
}
