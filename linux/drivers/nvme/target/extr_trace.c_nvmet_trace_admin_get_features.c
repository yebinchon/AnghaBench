
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct trace_seq {int dummy; } ;


 int get_unaligned_le32 (int*) ;
 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,int,int,int ) ;
 int trace_seq_putc (struct trace_seq*,int ) ;

__attribute__((used)) static const char *nvmet_trace_admin_get_features(struct trace_seq *p,
       u8 *cdw10)
{
 const char *ret = trace_seq_buffer_ptr(p);
 u8 fid = cdw10[0];
 u8 sel = cdw10[1] & 0x7;
 u32 cdw11 = get_unaligned_le32(cdw10 + 4);

 trace_seq_printf(p, "fid=0x%x sel=0x%x cdw11=0x%x", fid, sel, cdw11);
 trace_seq_putc(p, 0);

 return ret;
}
