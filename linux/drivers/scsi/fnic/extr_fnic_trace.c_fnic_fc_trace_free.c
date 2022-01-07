
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * page_offset; } ;


 TYPE_1__ fc_trace_entries ;
 scalar_t__ fnic_fc_ctlr_trace_buf_p ;
 int fnic_fc_trace_debugfs_terminate () ;
 scalar_t__ fnic_fc_tracing_enabled ;
 int pr_info (char*) ;
 int vfree (void*) ;

void fnic_fc_trace_free(void)
{
 fnic_fc_tracing_enabled = 0;
 fnic_fc_trace_debugfs_terminate();
 if (fc_trace_entries.page_offset) {
  vfree((void *)fc_trace_entries.page_offset);
  fc_trace_entries.page_offset = ((void*)0);
 }
 if (fnic_fc_ctlr_trace_buf_p) {
  vfree((void *)fnic_fc_ctlr_trace_buf_p);
  fnic_fc_ctlr_trace_buf_p = 0;
 }
 pr_info("fnic:Successfully FC_CTLR Freed Trace Buffer\n");
}
