
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchtec_ntb {int message_irq; int doorbell_irq; } ;


 int free_irq (int ,struct switchtec_ntb*) ;

__attribute__((used)) static void switchtec_ntb_deinit_db_msg_irq(struct switchtec_ntb *sndev)
{
 free_irq(sndev->doorbell_irq, sndev);
 free_irq(sndev->message_irq, sndev);
}
