
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct trace_seq {int dummy; } ;


 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,int,int *) ;
 int trace_seq_putc (struct trace_seq*,int ) ;

__attribute__((used)) static const char *nvmet_trace_common(struct trace_seq *p, u8 *cdw10)
{
 const char *ret = trace_seq_buffer_ptr(p);

 trace_seq_printf(p, "cdw10=%*ph", 24, cdw10);
 trace_seq_putc(p, 0);

 return ret;
}
