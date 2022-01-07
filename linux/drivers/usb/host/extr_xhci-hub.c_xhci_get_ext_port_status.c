
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DEV_PORT_SPEED (int) ;
 int PORT_RX_LANES (int) ;
 int PORT_TX_LANES (int) ;

__attribute__((used)) static u32 xhci_get_ext_port_status(u32 raw_port_status, u32 port_li)
{
 u32 ext_stat = 0;
 int speed_id;


 speed_id = DEV_PORT_SPEED(raw_port_status);
 ext_stat |= speed_id;
 ext_stat |= speed_id << 4;

 ext_stat |= PORT_RX_LANES(port_li) << 8;
 ext_stat |= PORT_TX_LANES(port_li) << 12;

 return ext_stat;
}
