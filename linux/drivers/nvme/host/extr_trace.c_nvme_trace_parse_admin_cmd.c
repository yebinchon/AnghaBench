
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct trace_seq {int dummy; } ;
 char const* nvme_trace_admin_get_features (struct trace_seq*,int*) ;
 char const* nvme_trace_admin_identify (struct trace_seq*,int*) ;
 char const* nvme_trace_common (struct trace_seq*,int*) ;
 char const* nvme_trace_create_cq (struct trace_seq*,int*) ;
 char const* nvme_trace_create_sq (struct trace_seq*,int*) ;
 char const* nvme_trace_delete_cq (struct trace_seq*,int*) ;
 char const* nvme_trace_delete_sq (struct trace_seq*,int*) ;
 char const* nvme_trace_get_lba_status (struct trace_seq*,int*) ;

const char *nvme_trace_parse_admin_cmd(struct trace_seq *p,
           u8 opcode, u8 *cdw10)
{
 switch (opcode) {
 case 131:
  return nvme_trace_delete_sq(p, cdw10);
 case 133:
  return nvme_trace_create_sq(p, cdw10);
 case 132:
  return nvme_trace_delete_cq(p, cdw10);
 case 134:
  return nvme_trace_create_cq(p, cdw10);
 case 128:
  return nvme_trace_admin_identify(p, cdw10);
 case 130:
  return nvme_trace_admin_get_features(p, cdw10);
 case 129:
  return nvme_trace_get_lba_status(p, cdw10);
 default:
  return nvme_trace_common(p, cdw10);
 }
}
