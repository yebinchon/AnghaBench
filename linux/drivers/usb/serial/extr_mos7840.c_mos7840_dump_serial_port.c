
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dev; } ;
struct moschip_port {int DcrRegOffset; int ControlRegOffset; int SpRegOffset; } ;


 int dev_dbg (int *,char*,int ) ;

__attribute__((used)) static void mos7840_dump_serial_port(struct usb_serial_port *port,
         struct moschip_port *mos7840_port)
{

 dev_dbg(&port->dev, "SpRegOffset is %2x\n", mos7840_port->SpRegOffset);
 dev_dbg(&port->dev, "ControlRegOffset is %2x\n", mos7840_port->ControlRegOffset);
 dev_dbg(&port->dev, "DCRRegOffset is %2x\n", mos7840_port->DcrRegOffset);

}
