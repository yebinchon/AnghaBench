
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct trace_seq {int dummy; } ;


 int get_unaligned_le16 (int *) ;
 int get_unaligned_le32 (int *) ;
 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,int ,int ,int ,int ,int ) ;
 int trace_seq_putc (struct trace_seq*,int ) ;

__attribute__((used)) static const char *nvme_trace_fabrics_connect(struct trace_seq *p, u8 *spc)
{
 const char *ret = trace_seq_buffer_ptr(p);
 u16 recfmt = get_unaligned_le16(spc);
 u16 qid = get_unaligned_le16(spc + 2);
 u16 sqsize = get_unaligned_le16(spc + 4);
 u8 cattr = spc[6];
 u32 kato = get_unaligned_le32(spc + 8);

 trace_seq_printf(p, "recfmt=%u, qid=%u, sqsize=%u, cattr=%u, kato=%u",
    recfmt, qid, sqsize, cattr, kato);
 trace_seq_putc(p, 0);
 return ret;
}
