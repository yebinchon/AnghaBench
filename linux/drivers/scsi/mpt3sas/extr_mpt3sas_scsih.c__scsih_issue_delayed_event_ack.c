
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct MPT3SAS_ADAPTER {int internal_smid; int (* put_smid_default ) (struct MPT3SAS_ADAPTER*,int) ;int base_cb_idx; int scsi_lookup_lock; TYPE_1__* internal_lookup; } ;
typedef int U32 ;
typedef int U16 ;
struct TYPE_6__ {scalar_t__ VP_ID; scalar_t__ VF_ID; int EventContext; int Event; int Function; } ;
struct TYPE_5__ {int cb_idx; } ;
typedef TYPE_2__ Mpi2EventAckRequest_t ;


 int MPI2_FUNCTION_EVENT_ACK ;
 int dewtprintk (struct MPT3SAS_ADAPTER*,int ) ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*,int ,int,int ) ;
 int le16_to_cpu (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_2__* mpt3sas_base_get_msg_frame (struct MPT3SAS_ADAPTER*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct MPT3SAS_ADAPTER*,int) ;

__attribute__((used)) static void
_scsih_issue_delayed_event_ack(struct MPT3SAS_ADAPTER *ioc, u16 smid, U16 event,
    U32 event_context)
{
 Mpi2EventAckRequest_t *ack_request;
 int i = smid - ioc->internal_smid;
 unsigned long flags;





 spin_lock_irqsave(&ioc->scsi_lookup_lock, flags);
 ioc->internal_lookup[i].cb_idx = ioc->base_cb_idx;
 spin_unlock_irqrestore(&ioc->scsi_lookup_lock, flags);

 dewtprintk(ioc,
     ioc_info(ioc, "EVENT ACK: event(0x%04x), smid(%d), cb(%d)\n",
       le16_to_cpu(event), smid, ioc->base_cb_idx));
 ack_request = mpt3sas_base_get_msg_frame(ioc, smid);
 memset(ack_request, 0, sizeof(Mpi2EventAckRequest_t));
 ack_request->Function = MPI2_FUNCTION_EVENT_ACK;
 ack_request->Event = event;
 ack_request->EventContext = event_context;
 ack_request->VF_ID = 0;
 ack_request->VP_ID = 0;
 ioc->put_smid_default(ioc, smid);
}
