
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb {TYPE_1__* nhi; } ;
struct pci_dev {int dummy; } ;
struct icm {int vnd_cap; struct pci_dev* upstream_port; } ;
struct TYPE_2__ {int pdev; } ;


 int PCI_EXT_CAP_ID_VNDR ;
 struct pci_dev* get_upstream_port (int ) ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 struct icm* tb_priv (struct tb*) ;
 int x86_apple_machine ;

__attribute__((used)) static bool icm_ar_is_supported(struct tb *tb)
{
 struct pci_dev *upstream_port;
 struct icm *icm = tb_priv(tb);





 if (!x86_apple_machine)
  return 1;





 upstream_port = get_upstream_port(tb->nhi->pdev);
 if (upstream_port) {
  int cap;

  cap = pci_find_ext_capability(upstream_port,
           PCI_EXT_CAP_ID_VNDR);
  if (cap > 0) {
   icm->upstream_port = upstream_port;
   icm->vnd_cap = cap;

   return 1;
  }
 }

 return 0;
}
