
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int L2CPUSRDR_EL1 ;
 int L2CPUSRSELR_EL1 ;
 int isb () ;
 int l2_access_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int write_sysreg_s (int ,int ) ;

__attribute__((used)) static void set_l2_indirect_reg(u64 reg, u64 val)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&l2_access_lock, flags);
 write_sysreg_s(reg, L2CPUSRSELR_EL1);
 isb();
 write_sysreg_s(val, L2CPUSRDR_EL1);
 isb();
 raw_spin_unlock_irqrestore(&l2_access_lock, flags);
}
