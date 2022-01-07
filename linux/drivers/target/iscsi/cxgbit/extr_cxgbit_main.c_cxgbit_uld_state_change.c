
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pdev; } ;
struct cxgbit_device {TYPE_1__ lldi; int flags; } ;
typedef enum cxgb4_state { ____Placeholder_cxgb4_state } cxgb4_state ;


 int CDEV_STATE_UP ;




 int clear_bit (int ,int *) ;
 int cxgbit_close_conn (struct cxgbit_device*) ;
 int cxgbit_detach_cdev (struct cxgbit_device*) ;
 int pci_name (int ) ;
 int pr_info (char*,int ,...) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int cxgbit_uld_state_change(void *handle, enum cxgb4_state state)
{
 struct cxgbit_device *cdev = handle;

 switch (state) {
 case 128:
  set_bit(CDEV_STATE_UP, &cdev->flags);
  pr_info("cdev %s state UP.\n", pci_name(cdev->lldi.pdev));
  break;
 case 129:
  clear_bit(CDEV_STATE_UP, &cdev->flags);
  cxgbit_close_conn(cdev);
  pr_info("cdev %s state RECOVERY.\n", pci_name(cdev->lldi.pdev));
  break;
 case 130:
  pr_info("cdev %s state DOWN.\n", pci_name(cdev->lldi.pdev));
  break;
 case 131:
  clear_bit(CDEV_STATE_UP, &cdev->flags);
  pr_info("cdev %s state DETACH.\n", pci_name(cdev->lldi.pdev));
  cxgbit_detach_cdev(cdev);
  break;
 default:
  pr_info("cdev %s unknown state %d.\n",
   pci_name(cdev->lldi.pdev), state);
  break;
 }
 return 0;
}
