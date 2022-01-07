
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pdev; } ;
struct idt_ntb_dev {TYPE_2__ ntb; } ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int ntb_unregister_device (TYPE_2__*) ;

__attribute__((used)) static void idt_unregister_device(struct idt_ntb_dev *ndev)
{

 ntb_unregister_device(&ndev->ntb);

 dev_dbg(&ndev->ntb.pdev->dev, "NTB device unregistered");
}
