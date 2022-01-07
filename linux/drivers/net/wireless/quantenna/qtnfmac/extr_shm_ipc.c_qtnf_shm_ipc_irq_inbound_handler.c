
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct qtnf_shm_ipc {int irq_work; int workqueue; TYPE_3__* shm_region; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
struct TYPE_6__ {TYPE_2__ headroom; } ;


 int QTNF_SHM_IPC_NEW_DATA ;
 int queue_work (int ,int *) ;
 int readl (int *) ;

__attribute__((used)) static void qtnf_shm_ipc_irq_inbound_handler(struct qtnf_shm_ipc *ipc)
{
 u32 flags;

 flags = readl(&ipc->shm_region->headroom.hdr.flags);

 if (flags & QTNF_SHM_IPC_NEW_DATA)
  queue_work(ipc->workqueue, &ipc->irq_work);
}
