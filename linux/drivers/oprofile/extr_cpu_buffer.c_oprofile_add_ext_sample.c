
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int __oprofile_add_ext_sample (unsigned long,struct pt_regs* const,unsigned long,int,int *) ;

void oprofile_add_ext_sample(unsigned long pc, struct pt_regs * const regs,
        unsigned long event, int is_kernel)
{
 __oprofile_add_ext_sample(pc, regs, event, is_kernel, ((void*)0));
}
