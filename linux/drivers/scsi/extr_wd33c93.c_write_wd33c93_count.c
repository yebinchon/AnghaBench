
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long* SCMD; int * SASR; } ;
typedef TYPE_1__ wd33c93_regs ;


 int WD_TRANSFER_COUNT_MSB ;
 int mb () ;

__attribute__((used)) static void
write_wd33c93_count(const wd33c93_regs regs, unsigned long value)
{
 *regs.SASR = WD_TRANSFER_COUNT_MSB;
 mb();
 *regs.SCMD = value >> 16;
 *regs.SCMD = value >> 8;
 *regs.SCMD = value;
 mb();
}
