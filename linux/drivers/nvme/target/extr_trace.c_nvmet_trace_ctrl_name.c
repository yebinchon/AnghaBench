
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct nvmet_ctrl {int cntlid; } ;


 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,...) ;
 int trace_seq_putc (struct trace_seq*,int ) ;

const char *nvmet_trace_ctrl_name(struct trace_seq *p, struct nvmet_ctrl *ctrl)
{
 const char *ret = trace_seq_buffer_ptr(p);
 if (ctrl)
  trace_seq_printf(p, "%d", ctrl->cntlid);
 else
  trace_seq_printf(p, "_");
 trace_seq_putc(p, 0);

 return ret;
}
