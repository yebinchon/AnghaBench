
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** SCMD; void** SASR; } ;
typedef TYPE_1__ wd33c93_regs ;
typedef void* uchar ;


 int mb () ;

__attribute__((used)) static inline void
write_wd33c93(const wd33c93_regs regs, uchar reg_num, uchar value)
{
 *regs.SASR = reg_num;
 mb();
 *regs.SCMD = value;
 mb();
}
