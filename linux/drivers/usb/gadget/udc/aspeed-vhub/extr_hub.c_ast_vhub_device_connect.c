
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ast_vhub {scalar_t__ wakeup_en; } ;


 int USB_PORT_STAT_CONNECTION ;
 int USB_PORT_STAT_ENABLE ;
 int ast_vhub_change_port_stat (struct ast_vhub*,unsigned int,int,int,int) ;
 int ast_vhub_send_host_wakeup (struct ast_vhub*) ;

void ast_vhub_device_connect(struct ast_vhub *vhub,
        unsigned int port, bool on)
{
 if (on)
  ast_vhub_change_port_stat(vhub, port, 0,
       USB_PORT_STAT_CONNECTION, 1);
 else
  ast_vhub_change_port_stat(vhub, port,
       USB_PORT_STAT_CONNECTION |
       USB_PORT_STAT_ENABLE,
       0, 1);





 if (vhub->wakeup_en)
  ast_vhub_send_host_wakeup(vhub);
}
