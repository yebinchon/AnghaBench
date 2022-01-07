
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct scsiio_tracker {int dummy; } ;
struct MPT3SAS_ADAPTER {scalar_t__ hi_priority_smid; scalar_t__ internal_smid; scalar_t__ hba_queue_depth; int scsi_lookup_lock; int internal_free_list; TYPE_2__* internal_lookup; int hpr_free_list; TYPE_1__* hpr_lookup; int request_sz; } ;
struct TYPE_4__ {int cb_idx; int tracker_list; } ;
struct TYPE_3__ {int cb_idx; int tracker_list; } ;


 int _base_recovery_check (struct MPT3SAS_ADAPTER*) ;
 struct scsiio_tracker* _get_st_from_smid (struct MPT3SAS_ADAPTER*,scalar_t__) ;
 int list_add (int *,int *) ;
 int memset (void*,int ,int ) ;
 int mpt3sas_base_clear_st (struct MPT3SAS_ADAPTER*,struct scsiio_tracker*) ;
 void* mpt3sas_base_get_msg_frame (struct MPT3SAS_ADAPTER*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
mpt3sas_base_free_smid(struct MPT3SAS_ADAPTER *ioc, u16 smid)
{
 unsigned long flags;
 int i;

 if (smid < ioc->hi_priority_smid) {
  struct scsiio_tracker *st;
  void *request;

  st = _get_st_from_smid(ioc, smid);
  if (!st) {
   _base_recovery_check(ioc);
   return;
  }


  request = mpt3sas_base_get_msg_frame(ioc, smid);
  memset(request, 0, ioc->request_sz);

  mpt3sas_base_clear_st(ioc, st);
  _base_recovery_check(ioc);
  return;
 }

 spin_lock_irqsave(&ioc->scsi_lookup_lock, flags);
 if (smid < ioc->internal_smid) {

  i = smid - ioc->hi_priority_smid;
  ioc->hpr_lookup[i].cb_idx = 0xFF;
  list_add(&ioc->hpr_lookup[i].tracker_list, &ioc->hpr_free_list);
 } else if (smid <= ioc->hba_queue_depth) {

  i = smid - ioc->internal_smid;
  ioc->internal_lookup[i].cb_idx = 0xFF;
  list_add(&ioc->internal_lookup[i].tracker_list,
      &ioc->internal_free_list);
 }
 spin_unlock_irqrestore(&ioc->scsi_lookup_lock, flags);
}
