
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct trace_seq {int dummy; } ;






 char const* nvme_trace_common (struct trace_seq*,int*) ;
 char const* nvme_trace_dsm (struct trace_seq*,int*) ;
 char const* nvme_trace_read_write (struct trace_seq*,int*) ;

const char *nvme_trace_parse_nvm_cmd(struct trace_seq *p,
         u8 opcode, u8 *cdw10)
{
 switch (opcode) {
 case 130:
 case 129:
 case 128:
  return nvme_trace_read_write(p, cdw10);
 case 131:
  return nvme_trace_dsm(p, cdw10);
 default:
  return nvme_trace_common(p, cdw10);
 }
}
