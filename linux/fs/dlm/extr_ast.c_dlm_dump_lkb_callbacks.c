
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sb_flags; int sb_status; int mode; int flags; scalar_t__ seq; } ;
struct TYPE_4__ {int sb_flags; int sb_status; int mode; int flags; scalar_t__ seq; } ;
struct dlm_lkb {TYPE_3__* lkb_callbacks; int lkb_id; TYPE_2__ lkb_last_cast; TYPE_1__ lkb_last_bast; } ;
struct TYPE_6__ {int sb_flags; int sb_status; int mode; int flags; scalar_t__ seq; } ;


 int DLM_CALLBACKS_SIZE ;
 int log_print (char*,int ,unsigned long long,int ,int ,int ,int ) ;

__attribute__((used)) static void dlm_dump_lkb_callbacks(struct dlm_lkb *lkb)
{
 int i;

 log_print("last_bast %x %llu flags %x mode %d sb %d %x",
    lkb->lkb_id,
    (unsigned long long)lkb->lkb_last_bast.seq,
    lkb->lkb_last_bast.flags,
    lkb->lkb_last_bast.mode,
    lkb->lkb_last_bast.sb_status,
    lkb->lkb_last_bast.sb_flags);

 log_print("last_cast %x %llu flags %x mode %d sb %d %x",
    lkb->lkb_id,
    (unsigned long long)lkb->lkb_last_cast.seq,
    lkb->lkb_last_cast.flags,
    lkb->lkb_last_cast.mode,
    lkb->lkb_last_cast.sb_status,
    lkb->lkb_last_cast.sb_flags);

 for (i = 0; i < DLM_CALLBACKS_SIZE; i++) {
  log_print("cb %x %llu flags %x mode %d sb %d %x",
     lkb->lkb_id,
     (unsigned long long)lkb->lkb_callbacks[i].seq,
     lkb->lkb_callbacks[i].flags,
     lkb->lkb_callbacks[i].mode,
     lkb->lkb_callbacks[i].sb_status,
     lkb->lkb_callbacks[i].sb_flags);
 }
}
