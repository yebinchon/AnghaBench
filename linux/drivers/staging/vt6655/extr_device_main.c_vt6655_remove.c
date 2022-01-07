
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int dummy; } ;
struct pci_dev {int dummy; } ;


 int device_free_info (struct vnt_private*) ;
 struct vnt_private* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void vt6655_remove(struct pci_dev *pcid)
{
 struct vnt_private *priv = pci_get_drvdata(pcid);

 if (!priv)
  return;
 device_free_info(priv);
}
