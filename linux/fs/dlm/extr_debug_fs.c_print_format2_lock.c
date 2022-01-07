
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct seq_file {int dummy; } ;
struct dlm_rsb {int res_name; int res_length; int res_nodeid; } ;
struct dlm_lkb {int lkb_flags; int lkb_rqmode; int lkb_grmode; int lkb_status; int lkb_exflags; int lkb_ownpid; int lkb_remid; int lkb_nodeid; int lkb_id; int lkb_timestamp; TYPE_1__* lkb_ua; } ;
struct TYPE_2__ {scalar_t__ xid; } ;


 int DLM_IFL_USER ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_us (int ) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,unsigned long long,int ,int,int ,int ,int ,unsigned long long,int ,int ,int ) ;

__attribute__((used)) static void print_format2_lock(struct seq_file *s, struct dlm_lkb *lkb,
          struct dlm_rsb *r)
{
 u64 xid = 0;
 u64 us;

 if (lkb->lkb_flags & DLM_IFL_USER) {
  if (lkb->lkb_ua)
   xid = lkb->lkb_ua->xid;
 }


 us = ktime_to_us(ktime_sub(ktime_get(), lkb->lkb_timestamp));




 seq_printf(s, "%x %d %x %u %llu %x %x %d %d %d %llu %u %d \"%s\"\n",
     lkb->lkb_id,
     lkb->lkb_nodeid,
     lkb->lkb_remid,
     lkb->lkb_ownpid,
     (unsigned long long)xid,
     lkb->lkb_exflags,
     lkb->lkb_flags,
     lkb->lkb_status,
     lkb->lkb_grmode,
     lkb->lkb_rqmode,
     (unsigned long long)us,
     r->res_nodeid,
     r->res_length,
     r->res_name);
}
