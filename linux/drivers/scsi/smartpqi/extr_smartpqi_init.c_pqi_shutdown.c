
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int dummy; } ;
struct pci_dev {int dev; } ;


 int SHUTDOWN ;
 int dev_warn (int *,char*) ;
 struct pqi_ctrl_info* pci_get_drvdata (struct pci_dev*) ;
 int pqi_flush_cache (struct pqi_ctrl_info*,int ) ;
 int pqi_free_interrupts (struct pqi_ctrl_info*) ;
 int pqi_reset (struct pqi_ctrl_info*) ;

__attribute__((used)) static void pqi_shutdown(struct pci_dev *pci_dev)
{
 int rc;
 struct pqi_ctrl_info *ctrl_info;

 ctrl_info = pci_get_drvdata(pci_dev);
 if (!ctrl_info)
  goto error;





 rc = pqi_flush_cache(ctrl_info, SHUTDOWN);
 pqi_free_interrupts(ctrl_info);
 pqi_reset(ctrl_info);
 if (rc == 0)
  return;

error:
 dev_warn(&pci_dev->dev,
  "unable to flush controller cache\n");
}
