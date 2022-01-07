
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct trace_seq {int dummy; } ;


 int SERVICE_ACTION16 (unsigned char*) ;




 scalar_t__ get_unaligned_be64 (unsigned char*) ;
 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,char const*,unsigned long long,unsigned char) ;
 int trace_seq_putc (struct trace_seq*,int ) ;
 int trace_seq_puts (struct trace_seq*,char*) ;

__attribute__((used)) static const char *
scsi_trace_zbc_out(struct trace_seq *p, unsigned char *cdb, int len)
{
 const char *ret = trace_seq_buffer_ptr(p), *cmd;
 u64 zone_id;

 switch (SERVICE_ACTION16(cdb)) {
 case 131:
  cmd = "CLOSE_ZONE";
  break;
 case 130:
  cmd = "FINISH_ZONE";
  break;
 case 129:
  cmd = "OPEN_ZONE";
  break;
 case 128:
  cmd = "RESET_WRITE_POINTER";
  break;
 default:
  trace_seq_puts(p, "UNKNOWN");
  goto out;
 }

 zone_id = get_unaligned_be64(&cdb[2]);

 trace_seq_printf(p, "%s zone=%llu all=%u", cmd,
    (unsigned long long)zone_id, cdb[14] & 1);

out:
 trace_seq_putc(p, 0);

 return ret;
}
