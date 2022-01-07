
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * SCMD; int * SASR; } ;
typedef TYPE_1__ wd33c93_regs ;
typedef int uint ;
typedef int uchar ;


 int WD_CDB_1 ;

__attribute__((used)) static inline void
write_wd33c93_cdb(const wd33c93_regs regs, uint len, uchar cmnd[])
{
 int i;

 *regs.SASR = WD_CDB_1;
 for (i = 0; i < len; i++)
  *regs.SCMD = cmnd[i];
}
