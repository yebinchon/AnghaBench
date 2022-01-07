
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * SASR; } ;
typedef TYPE_1__ wd33c93_regs ;
typedef int uchar ;



__attribute__((used)) static inline uchar
read_aux_stat(const wd33c93_regs regs)
{
 return *regs.SASR;
}
