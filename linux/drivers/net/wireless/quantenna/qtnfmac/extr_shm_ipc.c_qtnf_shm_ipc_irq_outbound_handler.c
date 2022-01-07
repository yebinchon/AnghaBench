
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct qtnf_shm_ipc {int tx_completion; int waiting_for_ack; TYPE_3__* shm_region; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
struct TYPE_6__ {TYPE_2__ headroom; } ;


 int QTNF_SHM_IPC_ACK ;
 int READ_ONCE (int ) ;
 int WRITE_ONCE (int ,int ) ;
 int complete (int *) ;
 int readl (int *) ;

__attribute__((used)) static void qtnf_shm_ipc_irq_outbound_handler(struct qtnf_shm_ipc *ipc)
{
 u32 flags;

 if (!READ_ONCE(ipc->waiting_for_ack))
  return;

 flags = readl(&ipc->shm_region->headroom.hdr.flags);

 if (flags & QTNF_SHM_IPC_ACK) {
  WRITE_ONCE(ipc->waiting_for_ack, 0);
  complete(&ipc->tx_completion);
 }
}
