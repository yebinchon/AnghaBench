
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_altmode_desc {int mode; int vdo; int svid; } ;
struct pd_mode_data {size_t altmodes; size_t svid_index; int * svids; struct typec_altmode_desc* altmode_desc; } ;
struct tcpm_port {int partner_altmode; struct pd_mode_data mode_data; } ;
typedef int __le32 ;


 size_t ARRAY_SIZE (int ) ;
 int le32_to_cpu (int const) ;
 int memset (struct typec_altmode_desc*,int ,int) ;
 int tcpm_log (struct tcpm_port*,char*,size_t,int ,int,int ) ;

__attribute__((used)) static void svdm_consume_modes(struct tcpm_port *port, const __le32 *payload,
          int cnt)
{
 struct pd_mode_data *pmdata = &port->mode_data;
 struct typec_altmode_desc *paltmode;
 int i;

 if (pmdata->altmodes >= ARRAY_SIZE(port->partner_altmode)) {

  return;
 }

 for (i = 1; i < cnt; i++) {
  paltmode = &pmdata->altmode_desc[pmdata->altmodes];
  memset(paltmode, 0, sizeof(*paltmode));

  paltmode->svid = pmdata->svids[pmdata->svid_index];
  paltmode->mode = i;
  paltmode->vdo = le32_to_cpu(payload[i]);

  tcpm_log(port, " Alternate mode %d: SVID 0x%04x, VDO %d: 0x%08x",
    pmdata->altmodes, paltmode->svid,
    paltmode->mode, paltmode->vdo);

  pmdata->altmodes++;
 }
}
