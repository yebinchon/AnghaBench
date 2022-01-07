
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whc {int periodic_work; int workqueue; int async_work; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static void transfer_done(struct whc *whc)
{
 queue_work(whc->workqueue, &whc->async_work);
 queue_work(whc->workqueue, &whc->periodic_work);
}
