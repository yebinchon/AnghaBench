
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ transfer_type; int (* stop ) (int ,int *) ;} ;
struct TYPE_7__ {int SCp; } ;
struct TYPE_9__ {TYPE_2__ dma; TYPE_1__ scsi; int host; } ;
typedef TYPE_3__ FAS216_Info ;


 int CMD_FLUSHFIFO ;
 int fas216_checkmagic (TYPE_3__*) ;
 int fas216_cmd (TYPE_3__*,int ) ;
 scalar_t__ fasdma_none ;
 scalar_t__ fasdma_real_all ;
 scalar_t__ fasdma_real_block ;
 int stub1 (int ,int *) ;

__attribute__((used)) static void fas216_aborttransfer(FAS216_Info *info)
{
 fas216_checkmagic(info);

 if (info->dma.transfer_type == fasdma_real_all ||
     info->dma.transfer_type == fasdma_real_block)
  info->dma.stop(info->host, &info->scsi.SCp);

 info->dma.transfer_type = fasdma_none;
 fas216_cmd(info, CMD_FLUSHFIFO);
}
