
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 unsigned int DIV_ROUND_UP (int,int) ;
 int TRB_MAX_BUFF_SIZE ;

unsigned int count_trbs(u64 addr, u64 len)
{
 unsigned int num_trbs;

 num_trbs = DIV_ROUND_UP(len + (addr & (TRB_MAX_BUFF_SIZE - 1)),
   TRB_MAX_BUFF_SIZE);
 if (num_trbs == 0)
  num_trbs++;

 return num_trbs;
}
