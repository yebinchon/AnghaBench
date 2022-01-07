
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbd_response {int list; } ;
struct smbd_connection {int reassembly_data_length; int count_enqueue_reassembly_queue; int count_reassembly_queue; int reassembly_queue_lock; int reassembly_queue_length; int reassembly_queue; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int virt_wmb () ;

__attribute__((used)) static void enqueue_reassembly(
 struct smbd_connection *info,
 struct smbd_response *response,
 int data_length)
{
 spin_lock(&info->reassembly_queue_lock);
 list_add_tail(&response->list, &info->reassembly_queue);
 info->reassembly_queue_length++;






 virt_wmb();
 info->reassembly_data_length += data_length;
 spin_unlock(&info->reassembly_queue_lock);
 info->count_reassembly_queue++;
 info->count_enqueue_reassembly_queue++;
}
