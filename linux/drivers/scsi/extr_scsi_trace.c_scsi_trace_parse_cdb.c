
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
 char const* scsi_trace_maintenance_in (struct trace_seq*,unsigned char*,int) ;
 char const* scsi_trace_maintenance_out (struct trace_seq*,unsigned char*,int) ;
 char const* scsi_trace_misc (struct trace_seq*,unsigned char*,int) ;
 char const* scsi_trace_rw10 (struct trace_seq*,unsigned char*,int) ;
 char const* scsi_trace_rw12 (struct trace_seq*,unsigned char*,int) ;
 char const* scsi_trace_rw16 (struct trace_seq*,unsigned char*,int) ;
 char const* scsi_trace_rw6 (struct trace_seq*,unsigned char*,int) ;
 char const* scsi_trace_service_action_in (struct trace_seq*,unsigned char*,int) ;
 char const* scsi_trace_unmap (struct trace_seq*,unsigned char*,int) ;
 char const* scsi_trace_varlen (struct trace_seq*,unsigned char*,int) ;
 char const* scsi_trace_zbc_in (struct trace_seq*,unsigned char*,int) ;
 char const* scsi_trace_zbc_out (struct trace_seq*,unsigned char*,int) ;

const char *
scsi_trace_parse_cdb(struct trace_seq *p, unsigned char *cdb, int len)
{
 switch (cdb[0]) {
 case 142:
 case 132:
  return scsi_trace_rw6(p, cdb, len);
 case 145:
 case 138:
 case 135:
 case 131:
  return scsi_trace_rw10(p, cdb, len);
 case 144:
 case 137:
 case 134:
  return scsi_trace_rw12(p, cdb, len);
 case 143:
 case 136:
 case 133:
 case 130:
  return scsi_trace_rw16(p, cdb, len);
 case 140:
  return scsi_trace_unmap(p, cdb, len);
 case 141:
  return scsi_trace_service_action_in(p, cdb, len);
 case 139:
  return scsi_trace_varlen(p, cdb, len);
 case 147:
  return scsi_trace_maintenance_in(p, cdb, len);
 case 146:
  return scsi_trace_maintenance_out(p, cdb, len);
 case 129:
  return scsi_trace_zbc_in(p, cdb, len);
 case 128:
  return scsi_trace_zbc_out(p, cdb, len);
 default:
  return scsi_trace_misc(p, cdb, len);
 }
}
