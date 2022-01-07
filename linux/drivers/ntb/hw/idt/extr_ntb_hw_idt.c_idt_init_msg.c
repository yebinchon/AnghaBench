
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pdev; } ;
struct idt_ntb_dev {TYPE_2__ ntb; int * msg_locks; } ;
struct TYPE_3__ {int dev; } ;


 unsigned char IDT_MSG_CNT ;
 int dev_dbg (int *,char*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void idt_init_msg(struct idt_ntb_dev *ndev)
{
 unsigned char midx;


 for (midx = 0; midx < IDT_MSG_CNT; midx++)
  spin_lock_init(&ndev->msg_locks[midx]);

 dev_dbg(&ndev->ntb.pdev->dev, "NTB Messaging initialized");
}
