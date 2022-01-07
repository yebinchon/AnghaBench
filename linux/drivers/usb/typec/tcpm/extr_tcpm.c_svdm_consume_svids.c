
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef void* u16 ;
struct pd_mode_data {scalar_t__ nsvids; void** svids; } ;
struct tcpm_port {struct pd_mode_data mode_data; } ;
typedef int __le32 ;


 scalar_t__ SVID_DISCOVERY_MAX ;
 int le32_to_cpu (int const) ;
 int tcpm_log (struct tcpm_port*,char*,scalar_t__,...) ;

__attribute__((used)) static bool svdm_consume_svids(struct tcpm_port *port, const __le32 *payload,
          int cnt)
{
 struct pd_mode_data *pmdata = &port->mode_data;
 int i;

 for (i = 1; i < cnt; i++) {
  u32 p = le32_to_cpu(payload[i]);
  u16 svid;

  svid = (p >> 16) & 0xffff;
  if (!svid)
   return 0;

  if (pmdata->nsvids >= SVID_DISCOVERY_MAX)
   goto abort;

  pmdata->svids[pmdata->nsvids++] = svid;
  tcpm_log(port, "SVID %d: 0x%x", pmdata->nsvids, svid);

  svid = p & 0xffff;
  if (!svid)
   return 0;

  if (pmdata->nsvids >= SVID_DISCOVERY_MAX)
   goto abort;

  pmdata->svids[pmdata->nsvids++] = svid;
  tcpm_log(port, "SVID %d: 0x%x", pmdata->nsvids, svid);
 }
 return 1;
abort:
 tcpm_log(port, "SVID_DISCOVERY_MAX(%d) too low!", SVID_DISCOVERY_MAX);
 return 0;
}
