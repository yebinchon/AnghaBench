
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_private {int nr; int dev; int * line; } ;
struct pci_serial_quirk {int (* exit ) (int ) ;} ;


 struct pci_serial_quirk* find_quirk (int ) ;
 int serial8250_unregister_port (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void pciserial_detach_ports(struct serial_private *priv)
{
 struct pci_serial_quirk *quirk;
 int i;

 for (i = 0; i < priv->nr; i++)
  serial8250_unregister_port(priv->line[i]);




 quirk = find_quirk(priv->dev);
 if (quirk->exit)
  quirk->exit(priv->dev);
}
