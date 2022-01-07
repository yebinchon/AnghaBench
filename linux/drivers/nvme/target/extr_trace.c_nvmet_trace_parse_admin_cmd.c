
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct trace_seq {int dummy; } ;





 char const* nvmet_trace_admin_get_features (struct trace_seq*,int*) ;
 char const* nvmet_trace_admin_identify (struct trace_seq*,int*) ;
 char const* nvmet_trace_common (struct trace_seq*,int*) ;
 char const* nvmet_trace_get_lba_status (struct trace_seq*,int*) ;

const char *nvmet_trace_parse_admin_cmd(struct trace_seq *p,
  u8 opcode, u8 *cdw10)
{
 switch (opcode) {
 case 128:
  return nvmet_trace_admin_identify(p, cdw10);
 case 130:
  return nvmet_trace_admin_get_features(p, cdw10);
 case 129:
  return nvmet_trace_get_lba_status(p, cdw10);
 default:
  return nvmet_trace_common(p, cdw10);
 }
}
