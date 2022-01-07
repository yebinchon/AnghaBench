
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct idt_ntb_dev {struct idt_89hpes_cfg* swcfg; int gasa_lock; int msg_mask_lock; int db_mask_lock; TYPE_1__ ntb; } ;
struct idt_89hpes_cfg {int name; } ;


 int ENOMEM ;
 struct idt_ntb_dev* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ) ;
 struct idt_ntb_dev* devm_kzalloc (int *,int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct idt_ntb_dev *idt_create_dev(struct pci_dev *pdev,
       const struct pci_device_id *id)
{
 struct idt_ntb_dev *ndev;


 ndev = devm_kzalloc(&pdev->dev, sizeof(*ndev), GFP_KERNEL);
 if (!ndev) {
  dev_err(&pdev->dev, "Memory allocation failed for descriptor");
  return ERR_PTR(-ENOMEM);
 }


 ndev->swcfg = (struct idt_89hpes_cfg *)id->driver_data;

 ndev->ntb.pdev = pdev;


 spin_lock_init(&ndev->db_mask_lock);
 spin_lock_init(&ndev->msg_mask_lock);
 spin_lock_init(&ndev->gasa_lock);

 dev_info(&pdev->dev, "IDT %s discovered", ndev->swcfg->name);

 dev_dbg(&pdev->dev, "NTB device descriptor created");

 return ndev;
}
