
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fnic_trace_data_t ;
struct TYPE_2__ {unsigned long* page_offset; size_t wr_idx; size_t rd_idx; } ;


 size_t fnic_max_trace_entries ;
 TYPE_1__ fnic_trace_entries ;
 int fnic_trace_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

fnic_trace_data_t *fnic_trace_get_buf(void)
{
 unsigned long fnic_buf_head;
 unsigned long flags;

 spin_lock_irqsave(&fnic_trace_lock, flags);





 fnic_buf_head =
  fnic_trace_entries.page_offset[fnic_trace_entries.wr_idx];
 fnic_trace_entries.wr_idx++;





 if (fnic_trace_entries.wr_idx >= fnic_max_trace_entries)
  fnic_trace_entries.wr_idx = 0;





 if (fnic_trace_entries.wr_idx == fnic_trace_entries.rd_idx) {
  fnic_trace_entries.rd_idx++;
  if (fnic_trace_entries.rd_idx >= fnic_max_trace_entries)
   fnic_trace_entries.rd_idx = 0;
 }
 spin_unlock_irqrestore(&fnic_trace_lock, flags);
 return (fnic_trace_data_t *)fnic_buf_head;
}
