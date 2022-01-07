
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_hcd_port {int flags; int oc_status; int oc_changed; } ;
struct s3c2410_hcd_info {struct s3c2410_hcd_port* port; } ;


 int S3C_HCDFLG_USED ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int s3c2410_usb_set_power (struct s3c2410_hcd_info*,int,int ) ;

__attribute__((used)) static void s3c2410_hcd_oc(struct s3c2410_hcd_info *info, int port_oc)
{
 struct s3c2410_hcd_port *port;
 unsigned long flags;
 int portno;

 if (info == ((void*)0))
  return;

 port = &info->port[0];

 local_irq_save(flags);

 for (portno = 0; portno < 2; port++, portno++) {
  if (port_oc & (1<<portno) &&
      port->flags & S3C_HCDFLG_USED) {
   port->oc_status = 1;
   port->oc_changed = 1;



   s3c2410_usb_set_power(info, portno+1, 0);
  }
 }

 local_irq_restore(flags);
}
