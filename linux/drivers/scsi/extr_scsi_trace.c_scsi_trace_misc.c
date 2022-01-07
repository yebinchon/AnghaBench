
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;


 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_putc (struct trace_seq*,char) ;

__attribute__((used)) static const char *
scsi_trace_misc(struct trace_seq *p, unsigned char *cdb, int len)
{
 const char *ret = trace_seq_buffer_ptr(p);

 trace_seq_putc(p, '-');
 trace_seq_putc(p, 0);

 return ret;
}
