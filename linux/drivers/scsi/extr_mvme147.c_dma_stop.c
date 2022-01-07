
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {scalar_t__ dma_cntrl; } ;


 TYPE_1__* m147_pcc ;

__attribute__((used)) static void dma_stop(struct Scsi_Host *instance, struct scsi_cmnd *SCpnt,
       int status)
{
 m147_pcc->dma_cntrl = 0;
}
