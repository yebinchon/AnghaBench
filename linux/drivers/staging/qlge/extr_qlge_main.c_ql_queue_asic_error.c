
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int asic_reset_work; int workqueue; int flags; } ;


 int QL_ADAPTER_UP ;
 int QL_ASIC_RECOVERY ;
 int clear_bit (int ,int *) ;
 int ql_disable_interrupts (struct ql_adapter*) ;
 int ql_link_off (struct ql_adapter*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int set_bit (int ,int *) ;

void ql_queue_asic_error(struct ql_adapter *qdev)
{
 ql_link_off(qdev);
 ql_disable_interrupts(qdev);




 clear_bit(QL_ADAPTER_UP, &qdev->flags);



 set_bit(QL_ASIC_RECOVERY, &qdev->flags);
 queue_delayed_work(qdev->workqueue, &qdev->asic_reset_work, 0);
}
