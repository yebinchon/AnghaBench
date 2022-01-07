
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ntb_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct idt_ntb_dev {TYPE_2__ ntb; } ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int idt_ntb_local_link_disable (struct idt_ntb_dev*) ;
 struct idt_ntb_dev* to_ndev_ntb (struct ntb_dev*) ;

__attribute__((used)) static int idt_ntb_link_disable(struct ntb_dev *ntb)
{
 struct idt_ntb_dev *ndev = to_ndev_ntb(ntb);


 idt_ntb_local_link_disable(ndev);

 dev_dbg(&ndev->ntb.pdev->dev, "Local NTB link disabled");

 return 0;
}
