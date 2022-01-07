
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t* tid_to_ac ;

u8 rtl_tid_to_ac(u8 tid)
{
 return tid_to_ac[tid];
}
