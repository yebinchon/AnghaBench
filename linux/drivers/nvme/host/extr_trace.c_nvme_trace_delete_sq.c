
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct trace_seq {int dummy; } ;


 int get_unaligned_le16 (int *) ;
 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,int ) ;
 int trace_seq_putc (struct trace_seq*,int ) ;

__attribute__((used)) static const char *nvme_trace_delete_sq(struct trace_seq *p, u8 *cdw10)
{
 const char *ret = trace_seq_buffer_ptr(p);
 u16 sqid = get_unaligned_le16(cdw10);

 trace_seq_printf(p, "sqid=%u", sqid);
 trace_seq_putc(p, 0);

 return ret;
}
