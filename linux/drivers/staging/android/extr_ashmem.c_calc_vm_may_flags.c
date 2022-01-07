
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_flags_t ;


 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int VM_MAYEXEC ;
 int VM_MAYREAD ;
 int VM_MAYWRITE ;
 int _calc_vm_trans (unsigned long,int ,int ) ;

__attribute__((used)) static inline vm_flags_t calc_vm_may_flags(unsigned long prot)
{
 return _calc_vm_trans(prot, PROT_READ, VM_MAYREAD) |
        _calc_vm_trans(prot, PROT_WRITE, VM_MAYWRITE) |
        _calc_vm_trans(prot, PROT_EXEC, VM_MAYEXEC);
}
