
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int size; scalar_t__ index; int base_addr; } ;
struct scsi_info {int flags; scalar_t__ new_state; scalar_t__ phyp_acr_state; int phyp_acr_flags; int state; int dev; TYPE_1__ cmd_q; int intr_lock; int dma_dev; } ;


 long ADAPT_SUCCESS ;
 int CRQ_CLOSED ;
 int PAGE_SIZE ;
 int dev_dbg (int *,char*,int,int ,int,scalar_t__) ;
 int ibmvscsis_delete_client_info (struct scsi_info*,int) ;
 long ibmvscsis_unregister_command_q (struct scsi_info*) ;
 int memset (int ,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vio_disable_interrupts (int ) ;

__attribute__((used)) static long ibmvscsis_free_command_q(struct scsi_info *vscsi)
{
 int bytes;
 u32 flags_under_lock;
 u16 state_under_lock;
 long rc = ADAPT_SUCCESS;

 if (!(vscsi->flags & CRQ_CLOSED)) {
  vio_disable_interrupts(vscsi->dma_dev);

  state_under_lock = vscsi->new_state;
  flags_under_lock = vscsi->flags;
  vscsi->phyp_acr_state = 0;
  vscsi->phyp_acr_flags = 0;

  spin_unlock_bh(&vscsi->intr_lock);
  rc = ibmvscsis_unregister_command_q(vscsi);
  spin_lock_bh(&vscsi->intr_lock);

  if (state_under_lock != vscsi->new_state)
   vscsi->phyp_acr_state = vscsi->new_state;

  vscsi->phyp_acr_flags = ((~flags_under_lock) & vscsi->flags);

  if (rc == ADAPT_SUCCESS) {
   bytes = vscsi->cmd_q.size * PAGE_SIZE;
   memset(vscsi->cmd_q.base_addr, 0, bytes);
   vscsi->cmd_q.index = 0;
   vscsi->flags |= CRQ_CLOSED;

   ibmvscsis_delete_client_info(vscsi, 0);
  }

  dev_dbg(&vscsi->dev, "free_command_q: flags 0x%x, state 0x%hx, acr_flags 0x%x, acr_state 0x%hx\n",
   vscsi->flags, vscsi->state, vscsi->phyp_acr_flags,
   vscsi->phyp_acr_state);
 }
 return rc;
}
