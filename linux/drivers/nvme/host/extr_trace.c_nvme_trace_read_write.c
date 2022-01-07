
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct trace_seq {int dummy; } ;


 int get_unaligned_le16 (int *) ;
 int get_unaligned_le32 (int *) ;
 int get_unaligned_le64 (int *) ;
 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,int ,int ,int ,int ,int ) ;
 int trace_seq_putc (struct trace_seq*,int ) ;

__attribute__((used)) static const char *nvme_trace_read_write(struct trace_seq *p, u8 *cdw10)
{
 const char *ret = trace_seq_buffer_ptr(p);
 u64 slba = get_unaligned_le64(cdw10);
 u16 length = get_unaligned_le16(cdw10 + 8);
 u16 control = get_unaligned_le16(cdw10 + 10);
 u32 dsmgmt = get_unaligned_le32(cdw10 + 12);
 u32 reftag = get_unaligned_le32(cdw10 + 16);

 trace_seq_printf(p,
    "slba=%llu, len=%u, ctrl=0x%x, dsmgmt=%u, reftag=%u",
    slba, length, control, dsmgmt, reftag);
 trace_seq_putc(p, 0);

 return ret;
}
