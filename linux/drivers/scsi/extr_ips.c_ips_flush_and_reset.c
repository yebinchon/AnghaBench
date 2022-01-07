
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ reserved4; scalar_t__ reserved3; scalar_t__ reserved2; scalar_t__ reserved; int state; int command_id; void* op_code; } ;
struct TYPE_18__ {TYPE_1__ flush_cache; } ;
struct TYPE_21__ {TYPE_2__ cmd; void** cdb; int timeout; int scb_busaddr; } ;
typedef TYPE_5__ ips_scb_t ;
struct TYPE_19__ {int (* reset ) (TYPE_6__*) ;} ;
struct TYPE_22__ {TYPE_4__* pcidev; TYPE_3__ func; } ;
typedef TYPE_6__ ips_ha_t ;
typedef int dma_addr_t ;
struct TYPE_20__ {int dev; } ;


 int GFP_KERNEL ;
 void* IPS_CMD_FLUSH ;
 int IPS_MAX_CMDS ;
 int IPS_NORM_STATE ;
 int IPS_ONE_SEC ;
 int IPS_SUCCESS ;
 TYPE_5__* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,TYPE_5__*,int ) ;
 int ips_cmd_timeout ;
 int ips_init_scb (TYPE_6__*,TYPE_5__*) ;
 int ips_poll_for_flush_complete (TYPE_6__*) ;
 int ips_send_cmd (TYPE_6__*,TYPE_5__*) ;
 int memset (TYPE_5__*,int ,int) ;
 int stub1 (TYPE_6__*) ;
 int udelay (int) ;

__attribute__((used)) static void
ips_flush_and_reset(ips_ha_t *ha)
{
 ips_scb_t *scb;
 int ret;
  int time;
 int done;
 dma_addr_t command_dma;


 scb = dma_alloc_coherent(&ha->pcidev->dev, sizeof(ips_scb_t),
   &command_dma, GFP_KERNEL);
 if (scb) {
     memset(scb, 0, sizeof(ips_scb_t));
     ips_init_scb(ha, scb);
     scb->scb_busaddr = command_dma;

     scb->timeout = ips_cmd_timeout;
     scb->cdb[0] = IPS_CMD_FLUSH;

     scb->cmd.flush_cache.op_code = IPS_CMD_FLUSH;
     scb->cmd.flush_cache.command_id = IPS_MAX_CMDS;
     scb->cmd.flush_cache.state = IPS_NORM_STATE;
     scb->cmd.flush_cache.reserved = 0;
     scb->cmd.flush_cache.reserved2 = 0;
     scb->cmd.flush_cache.reserved3 = 0;
     scb->cmd.flush_cache.reserved4 = 0;

     ret = ips_send_cmd(ha, scb);

     if (ret == IPS_SUCCESS) {
         time = 60 * IPS_ONE_SEC;
         done = 0;

         while ((time > 0) && (!done)) {
     done = ips_poll_for_flush_complete(ha);

            udelay(1000);
            time--;
         }
        }
 }


 (*ha->func.reset) (ha);

 dma_free_coherent(&ha->pcidev->dev, sizeof(ips_scb_t), scb, command_dma);
 return;
}
