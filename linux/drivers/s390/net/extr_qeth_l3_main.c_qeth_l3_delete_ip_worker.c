
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct qeth_l3_ip_event_work {int addr; int card; } ;


 int kfree (struct work_struct*) ;
 int qeth_l3_modify_ip (int ,int *,int) ;
 struct qeth_l3_ip_event_work* to_ip_work (struct work_struct*) ;

__attribute__((used)) static void qeth_l3_delete_ip_worker(struct work_struct *work)
{
 struct qeth_l3_ip_event_work *ip_work = to_ip_work(work);

 qeth_l3_modify_ip(ip_work->card, &ip_work->addr, 0);
 kfree(work);
}
