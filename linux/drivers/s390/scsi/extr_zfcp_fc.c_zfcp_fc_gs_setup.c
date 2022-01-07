
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_fc_wka_ports {int as; int ds; int ts; int ms; } ;
struct zfcp_adapter {struct zfcp_fc_wka_ports* gs; } ;


 int ENOMEM ;
 int FC_FID_ALIASES ;
 int FC_FID_DIR_SERV ;
 int FC_FID_MGMT_SERV ;
 int FC_FID_TIME_SERV ;
 int GFP_KERNEL ;
 struct zfcp_fc_wka_ports* kzalloc (int,int ) ;
 int zfcp_fc_wka_port_init (int *,int ,struct zfcp_adapter*) ;

int zfcp_fc_gs_setup(struct zfcp_adapter *adapter)
{
 struct zfcp_fc_wka_ports *wka_ports;

 wka_ports = kzalloc(sizeof(struct zfcp_fc_wka_ports), GFP_KERNEL);
 if (!wka_ports)
  return -ENOMEM;

 adapter->gs = wka_ports;
 zfcp_fc_wka_port_init(&wka_ports->ms, FC_FID_MGMT_SERV, adapter);
 zfcp_fc_wka_port_init(&wka_ports->ts, FC_FID_TIME_SERV, adapter);
 zfcp_fc_wka_port_init(&wka_ports->ds, FC_FID_DIR_SERV, adapter);
 zfcp_fc_wka_port_init(&wka_ports->as, FC_FID_ALIASES, adapter);

 return 0;
}
