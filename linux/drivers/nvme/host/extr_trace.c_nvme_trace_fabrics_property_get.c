
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct trace_seq {int dummy; } ;


 int get_unaligned_le32 (int *) ;
 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,int ,int ) ;
 int trace_seq_putc (struct trace_seq*,int ) ;

__attribute__((used)) static const char *nvme_trace_fabrics_property_get(struct trace_seq *p, u8 *spc)
{
 const char *ret = trace_seq_buffer_ptr(p);
 u8 attrib = spc[0];
 u32 ofst = get_unaligned_le32(spc + 4);

 trace_seq_printf(p, "attrib=%u, ofst=0x%x", attrib, ofst);
 trace_seq_putc(p, 0);
 return ret;
}
