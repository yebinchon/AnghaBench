
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbd_connection {scalar_t__ transport_status; int send_immediate; int receive_credit_target; int send_immediate_work; int workqueue; int receive_credits; } ;


 scalar_t__ SMBD_CONNECTED ;
 int atomic_read (int *) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void check_and_send_immediate(struct smbd_connection *info)
{
 if (info->transport_status != SMBD_CONNECTED)
  return;

 info->send_immediate = 1;





 if (atomic_read(&info->receive_credits) <
  info->receive_credit_target - 1)
  queue_delayed_work(
   info->workqueue, &info->send_immediate_work, 0);
}
