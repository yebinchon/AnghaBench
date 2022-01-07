
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ntb_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct idt_ntb_dev {TYPE_2__ ntb; } ;
typedef enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int idt_ntb_local_link_enable (struct idt_ntb_dev*) ;
 struct idt_ntb_dev* to_ndev_ntb (struct ntb_dev*) ;

__attribute__((used)) static int idt_ntb_link_enable(struct ntb_dev *ntb, enum ntb_speed speed,
          enum ntb_width width)
{
 struct idt_ntb_dev *ndev = to_ndev_ntb(ntb);


 idt_ntb_local_link_enable(ndev);

 dev_dbg(&ndev->ntb.pdev->dev, "Local NTB link enabled");

 return 0;
}
