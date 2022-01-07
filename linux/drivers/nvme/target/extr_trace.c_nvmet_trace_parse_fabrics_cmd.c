
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct trace_seq {int dummy; } ;





 char const* nvmet_trace_fabrics_common (struct trace_seq*,int*) ;
 char const* nvmet_trace_fabrics_connect (struct trace_seq*,int*) ;
 char const* nvmet_trace_fabrics_property_get (struct trace_seq*,int*) ;
 char const* nvmet_trace_fabrics_property_set (struct trace_seq*,int*) ;

const char *nvmet_trace_parse_fabrics_cmd(struct trace_seq *p,
  u8 fctype, u8 *spc)
{
 switch (fctype) {
 case 128:
  return nvmet_trace_fabrics_property_set(p, spc);
 case 130:
  return nvmet_trace_fabrics_connect(p, spc);
 case 129:
  return nvmet_trace_fabrics_property_get(p, spc);
 default:
  return nvmet_trace_fabrics_common(p, spc);
 }
}
