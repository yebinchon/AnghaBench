
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pdev; int topo; int * ops; } ;
struct idt_ntb_dev {TYPE_2__ ntb; } ;
struct TYPE_3__ {int dev; } ;


 int NTB_TOPO_SWITCH ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int idt_ntb_ops ;
 int ntb_register_device (TYPE_2__*) ;

__attribute__((used)) static int idt_register_device(struct idt_ntb_dev *ndev)
{
 int ret;


 ndev->ntb.ops = &idt_ntb_ops;
 ndev->ntb.topo = NTB_TOPO_SWITCH;

 ret = ntb_register_device(&ndev->ntb);
 if (ret != 0) {
  dev_err(&ndev->ntb.pdev->dev, "Failed to register NTB device");
  return ret;
 }

 dev_dbg(&ndev->ntb.pdev->dev, "NTB device successfully registered");

 return 0;
}
