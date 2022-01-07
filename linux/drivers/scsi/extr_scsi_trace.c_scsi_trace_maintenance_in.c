
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct trace_seq {int dummy; } ;
 int SERVICE_ACTION16 (unsigned char*) ;
 int get_unaligned_be32 (unsigned char*) ;
 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,char const*,int ) ;
 int trace_seq_putc (struct trace_seq*,int ) ;
 int trace_seq_puts (struct trace_seq*,char*) ;

__attribute__((used)) static const char *
scsi_trace_maintenance_in(struct trace_seq *p, unsigned char *cdb, int len)
{
 const char *ret = trace_seq_buffer_ptr(p), *cmd;
 u32 alloc_len;

 switch (SERVICE_ACTION16(cdb)) {
 case 133:
  cmd = "REPORT_IDENTIFYING_INFORMATION";
  break;
 case 129:
  cmd = "REPORT_TARGET_PORT_GROUPS";
  break;
 case 134:
  cmd = "REPORT_ALIASES";
  break;
 case 131:
  cmd = "REPORT_SUPPORTED_OPERATION_CODES";
  break;
 case 130:
  cmd = "REPORT_SUPPORTED_TASK_MANAGEMENT_FUNCTIONS";
  break;
 case 132:
  cmd = "REPORT_PRIORITY";
  break;
 case 128:
  cmd = "REPORT_TIMESTAMP";
  break;
 case 135:
  cmd = "MANAGEMENT_PROTOCOL_IN";
  break;
 default:
  trace_seq_puts(p, "UNKNOWN");
  goto out;
 }

 alloc_len = get_unaligned_be32(&cdb[6]);

 trace_seq_printf(p, "%s alloc_len=%u", cmd, alloc_len);

out:
 trace_seq_putc(p, 0);

 return ret;
}
