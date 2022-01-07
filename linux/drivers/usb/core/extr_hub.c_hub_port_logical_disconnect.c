
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hub {int change_bits; TYPE_1__** ports; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int hub_port_disable (struct usb_hub*,int,int) ;
 int kick_hub_wq (struct usb_hub*) ;
 int set_bit (int,int ) ;

__attribute__((used)) static void hub_port_logical_disconnect(struct usb_hub *hub, int port1)
{
 dev_dbg(&hub->ports[port1 - 1]->dev, "logical disconnect\n");
 hub_port_disable(hub, port1, 1);
 set_bit(port1, hub->change_bits);
 kick_hub_wq(hub);
}
