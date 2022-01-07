
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_debug (char*,...) ;
 unsigned char usb_pipedevice (unsigned int) ;
 unsigned char usb_pipeendpoint (unsigned int) ;
 unsigned char usb_pipein (unsigned int) ;
 unsigned char usb_pipetype (unsigned int) ;

__attribute__((used)) static void usbip_dump_pipe(unsigned int p)
{
 unsigned char type = usb_pipetype(p);
 unsigned char ep = usb_pipeendpoint(p);
 unsigned char dev = usb_pipedevice(p);
 unsigned char dir = usb_pipein(p);

 pr_debug("dev(%d) ep(%d) [%s] ", dev, ep, dir ? "IN" : "OUT");

 switch (type) {
 case 128:
  pr_debug("ISO\n");
  break;
 case 129:
  pr_debug("INT\n");
  break;
 case 130:
  pr_debug("CTRL\n");
  break;
 case 131:
  pr_debug("BULK\n");
  break;
 default:
  pr_debug("ERR\n");
  break;
 }
}
