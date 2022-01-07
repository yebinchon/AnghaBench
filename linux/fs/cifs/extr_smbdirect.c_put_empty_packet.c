
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbd_response {int list; } ;
struct smbd_connection {int post_send_credits_work; int workqueue; int empty_packet_queue_lock; int count_empty_packet_queue; int empty_packet_queue; } ;


 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void put_empty_packet(
  struct smbd_connection *info, struct smbd_response *response)
{
 spin_lock(&info->empty_packet_queue_lock);
 list_add_tail(&response->list, &info->empty_packet_queue);
 info->count_empty_packet_queue++;
 spin_unlock(&info->empty_packet_queue_lock);

 queue_work(info->workqueue, &info->post_send_credits_work);
}
