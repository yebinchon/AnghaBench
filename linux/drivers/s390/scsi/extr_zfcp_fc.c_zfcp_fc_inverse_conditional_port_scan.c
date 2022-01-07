
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int dummy; } ;


 int no_auto_port_rescan ;
 int zfcp_fc_port_scan (struct zfcp_adapter*) ;

void zfcp_fc_inverse_conditional_port_scan(struct zfcp_adapter *adapter)
{
 if (!no_auto_port_rescan)
  return;

 zfcp_fc_port_scan(adapter);
}
