
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
struct timespec64 {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_8__ {int val; int low; } ;
struct TYPE_7__ {int val; int low; } ;
struct TYPE_9__ {int * data; int tag; int host_no; TYPE_2__ timestamp; TYPE_1__ fnaddr; } ;
typedef TYPE_3__ fnic_trace_data_t ;
struct TYPE_10__ {scalar_t__ buffer; } ;
typedef TYPE_4__ fnic_dbgfs_t ;
struct TYPE_11__ {int rd_idx; int wr_idx; scalar_t__* page_offset; } ;


 int KSYM_SYMBOL_LEN ;
 int PAGE_SIZE ;
 int fnic_max_trace_entries ;
 TYPE_5__ fnic_trace_entries ;
 int fnic_trace_lock ;
 int jiffies_to_timespec64 (int ,struct timespec64*) ;
 scalar_t__ snprintf (scalar_t__,int,char*,int ,int ,char*,int ,int ,int ,int ,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprint_symbol (char*,int ) ;
 int trace_max_pages ;

int fnic_get_trace_data(fnic_dbgfs_t *fnic_dbgfs_prt)
{
 int rd_idx;
 int wr_idx;
 int len = 0;
 unsigned long flags;
 char str[KSYM_SYMBOL_LEN];
 struct timespec64 val;
 fnic_trace_data_t *tbp;

 spin_lock_irqsave(&fnic_trace_lock, flags);
 rd_idx = fnic_trace_entries.rd_idx;
 wr_idx = fnic_trace_entries.wr_idx;
 if (wr_idx < rd_idx) {
  while (1) {

   tbp = (fnic_trace_data_t *)
      fnic_trace_entries.page_offset[rd_idx];
   if (!tbp) {
    spin_unlock_irqrestore(&fnic_trace_lock, flags);
    return 0;
   }

   if (sizeof(unsigned long) < 8) {
    sprint_symbol(str, tbp->fnaddr.low);
    jiffies_to_timespec64(tbp->timestamp.low, &val);
   } else {
    sprint_symbol(str, tbp->fnaddr.val);
    jiffies_to_timespec64(tbp->timestamp.val, &val);
   }




   len += snprintf(fnic_dbgfs_prt->buffer + len,
      (trace_max_pages * PAGE_SIZE * 3) - len,
      "%16llu.%09lu %-50s %8x %8x %16llx %16llx "
      "%16llx %16llx %16llx\n", (u64)val.tv_sec,
      val.tv_nsec, str, tbp->host_no, tbp->tag,
      tbp->data[0], tbp->data[1], tbp->data[2],
      tbp->data[3], tbp->data[4]);
   rd_idx++;




   if (rd_idx > (fnic_max_trace_entries-1))
    rd_idx = 0;




   if (rd_idx == wr_idx)
    break;
  }
 } else if (wr_idx > rd_idx) {
  while (1) {

   tbp = (fnic_trace_data_t *)
      fnic_trace_entries.page_offset[rd_idx];
   if (!tbp) {
    spin_unlock_irqrestore(&fnic_trace_lock, flags);
    return 0;
   }

   if (sizeof(unsigned long) < 8) {
    sprint_symbol(str, tbp->fnaddr.low);
    jiffies_to_timespec64(tbp->timestamp.low, &val);
   } else {
    sprint_symbol(str, tbp->fnaddr.val);
    jiffies_to_timespec64(tbp->timestamp.val, &val);
   }




   len += snprintf(fnic_dbgfs_prt->buffer + len,
      (trace_max_pages * PAGE_SIZE * 3) - len,
      "%16llu.%09lu %-50s %8x %8x %16llx %16llx "
      "%16llx %16llx %16llx\n", (u64)val.tv_sec,
      val.tv_nsec, str, tbp->host_no, tbp->tag,
      tbp->data[0], tbp->data[1], tbp->data[2],
      tbp->data[3], tbp->data[4]);
   rd_idx++;




   if (rd_idx == wr_idx)
    break;
  }
 }
 spin_unlock_irqrestore(&fnic_trace_lock, flags);
 return len;
}
