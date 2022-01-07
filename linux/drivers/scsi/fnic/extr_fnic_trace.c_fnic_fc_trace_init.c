
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* page_offset; scalar_t__ wr_idx; scalar_t__ rd_idx; } ;


 int ENOMEM ;
 unsigned long FC_TRC_SIZE_BYTES ;
 unsigned long PAGE_SIZE ;
 int array_size (int,int) ;
 TYPE_1__ fc_trace_entries ;
 int fc_trace_max_entries ;
 long fnic_fc_ctlr_trace_buf_p ;
 int fnic_fc_trace_debugfs_init () ;
 unsigned long fnic_fc_trace_max_pages ;
 int memset (void*,int ,int) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int vfree (void*) ;
 unsigned long* vmalloc (int ) ;

int fnic_fc_trace_init(void)
{
 unsigned long fc_trace_buf_head;
 int err = 0;
 int i;

 fc_trace_max_entries = (fnic_fc_trace_max_pages * PAGE_SIZE)/
    FC_TRC_SIZE_BYTES;
 fnic_fc_ctlr_trace_buf_p =
  (unsigned long)vmalloc(array_size(PAGE_SIZE,
        fnic_fc_trace_max_pages));
 if (!fnic_fc_ctlr_trace_buf_p) {
  pr_err("fnic: Failed to allocate memory for "
         "FC Control Trace Buf\n");
  err = -ENOMEM;
  goto err_fnic_fc_ctlr_trace_buf_init;
 }

 memset((void *)fnic_fc_ctlr_trace_buf_p, 0,
   fnic_fc_trace_max_pages * PAGE_SIZE);


 fc_trace_entries.page_offset =
  vmalloc(array_size(fc_trace_max_entries,
       sizeof(unsigned long)));
 if (!fc_trace_entries.page_offset) {
  pr_err("fnic:Failed to allocate memory for page_offset\n");
  if (fnic_fc_ctlr_trace_buf_p) {
   pr_err("fnic: Freeing FC Control Trace Buf\n");
   vfree((void *)fnic_fc_ctlr_trace_buf_p);
   fnic_fc_ctlr_trace_buf_p = 0;
  }
  err = -ENOMEM;
  goto err_fnic_fc_ctlr_trace_buf_init;
 }
 memset((void *)fc_trace_entries.page_offset, 0,
        (fc_trace_max_entries * sizeof(unsigned long)));

 fc_trace_entries.rd_idx = fc_trace_entries.wr_idx = 0;
 fc_trace_buf_head = fnic_fc_ctlr_trace_buf_p;





 for (i = 0; i < fc_trace_max_entries; i++) {
  fc_trace_entries.page_offset[i] = fc_trace_buf_head;
  fc_trace_buf_head += FC_TRC_SIZE_BYTES;
 }
 fnic_fc_trace_debugfs_init();
 pr_info("fnic: Successfully Initialized FC_CTLR Trace Buffer\n");
 return err;

err_fnic_fc_ctlr_trace_buf_init:
 return err;
}
