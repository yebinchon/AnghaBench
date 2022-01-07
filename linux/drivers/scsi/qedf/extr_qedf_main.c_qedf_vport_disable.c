
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_vport {struct fc_lport* dd_data; } ;
struct fc_lport {int boot_time; } ;


 int FC_VPORT_DISABLED ;
 int fc_fabric_login (struct fc_lport*) ;
 int fc_fabric_logoff (struct fc_lport*) ;
 int fc_vport_set_state (struct fc_vport*,int ) ;
 int fc_vport_setlink (struct fc_lport*) ;
 int jiffies ;

__attribute__((used)) static int qedf_vport_disable(struct fc_vport *vport, bool disable)
{
 struct fc_lport *lport = vport->dd_data;

 if (disable) {
  fc_vport_set_state(vport, FC_VPORT_DISABLED);
  fc_fabric_logoff(lport);
 } else {
  lport->boot_time = jiffies;
  fc_fabric_login(lport);
  fc_vport_setlink(lport);
 }
 return 0;
}
