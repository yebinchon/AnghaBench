
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct trace_seq {int dummy; } ;


 int SERVICE_ACTION16 (unsigned char*) ;

 int get_unaligned_be32 (unsigned char*) ;
 scalar_t__ get_unaligned_be64 (unsigned char*) ;
 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,char const*,unsigned long long,int ,unsigned char,unsigned char) ;
 int trace_seq_putc (struct trace_seq*,int ) ;
 int trace_seq_puts (struct trace_seq*,char*) ;

__attribute__((used)) static const char *
scsi_trace_zbc_in(struct trace_seq *p, unsigned char *cdb, int len)
{
 const char *ret = trace_seq_buffer_ptr(p), *cmd;
 u64 zone_id;
 u32 alloc_len;
 u8 options;

 switch (SERVICE_ACTION16(cdb)) {
 case 128:
  cmd = "REPORT_ZONES";
  break;
 default:
  trace_seq_puts(p, "UNKNOWN");
  goto out;
 }

 zone_id = get_unaligned_be64(&cdb[2]);
 alloc_len = get_unaligned_be32(&cdb[10]);
 options = cdb[14] & 0x3f;

 trace_seq_printf(p, "%s zone=%llu alloc_len=%u options=%u partial=%u",
    cmd, (unsigned long long)zone_id, alloc_len,
    options, (cdb[14] >> 7) & 1);

out:
 trace_seq_putc(p, 0);

 return ret;
}
