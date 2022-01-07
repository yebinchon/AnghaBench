
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_private {int dummy; } ;


 int kfree (struct serial_private*) ;
 int pciserial_detach_ports (struct serial_private*) ;

void pciserial_remove_ports(struct serial_private *priv)
{
 pciserial_detach_ports(priv);
 kfree(priv);
}
