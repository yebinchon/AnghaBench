
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int* cfg; } ;
struct TYPE_8__ {TYPE_1__* device; TYPE_2__ scsi; } ;
struct TYPE_6__ {unsigned int sof; unsigned int stp; int period; } ;
typedef TYPE_3__ FAS216_Info ;


 unsigned int CNTL3_FASTSCSI ;
 int REG_CNTL3 ;
 int REG_SOF ;
 int REG_STP ;
 int fas216_writeb (TYPE_3__*,int ,unsigned int) ;

__attribute__((used)) static void fas216_set_sync(FAS216_Info *info, int target)
{
 unsigned int cntl3;

 fas216_writeb(info, REG_SOF, info->device[target].sof);
 fas216_writeb(info, REG_STP, info->device[target].stp);

 cntl3 = info->scsi.cfg[2];
 if (info->device[target].period >= (200 / 4))
  cntl3 = cntl3 & ~CNTL3_FASTSCSI;

 fas216_writeb(info, REG_CNTL3, cntl3);
}
