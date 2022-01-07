
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct idt_ntb_dev {TYPE_2__ ntb; } ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int *,char*,int ) ;
 int ntb_db_event (TYPE_2__*,int ) ;

__attribute__((used)) static void idt_db_isr(struct idt_ntb_dev *ndev, u32 ntint_sts)
{




 dev_dbg(&ndev->ntb.pdev->dev, "DB IRQ detected %#08x", ntint_sts);


 ntb_db_event(&ndev->ntb, 0);
}
