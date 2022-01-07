
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_virt_device {TYPE_1__* udev; } ;
struct xhci_slot_priv {struct xhci_virt_device* dev; } ;
struct seq_file {struct xhci_slot_priv* private; } ;
struct TYPE_2__ {int dev; } ;


 int dev_name (int *) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int xhci_device_name_show(struct seq_file *s, void *unused)
{
 struct xhci_slot_priv *priv = s->private;
 struct xhci_virt_device *dev = priv->dev;

 seq_printf(s, "%s\n", dev_name(&dev->udev->dev));

 return 0;
}
