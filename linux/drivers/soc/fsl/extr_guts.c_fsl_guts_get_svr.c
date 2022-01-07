
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* regs; scalar_t__ little_endian; } ;
struct TYPE_3__ {int svr; } ;


 TYPE_2__* guts ;
 int ioread32 (int *) ;
 int ioread32be (int *) ;

__attribute__((used)) static u32 fsl_guts_get_svr(void)
{
 u32 svr = 0;

 if (!guts || !guts->regs)
  return svr;

 if (guts->little_endian)
  svr = ioread32(&guts->regs->svr);
 else
  svr = ioread32be(&guts->regs->svr);

 return svr;
}
