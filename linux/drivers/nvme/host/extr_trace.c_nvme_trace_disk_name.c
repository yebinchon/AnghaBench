
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;


 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,char*) ;
 int trace_seq_putc (struct trace_seq*,int ) ;

const char *nvme_trace_disk_name(struct trace_seq *p, char *name)
{
 const char *ret = trace_seq_buffer_ptr(p);

 if (*name)
  trace_seq_printf(p, "disk=%s, ", name);
 trace_seq_putc(p, 0);

 return ret;
}
