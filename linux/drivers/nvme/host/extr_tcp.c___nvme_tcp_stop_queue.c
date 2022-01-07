
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_tcp_queue {int io_work; int sock; } ;


 int SHUT_RDWR ;
 int cancel_work_sync (int *) ;
 int kernel_sock_shutdown (int ,int ) ;
 int nvme_tcp_restore_sock_calls (struct nvme_tcp_queue*) ;

__attribute__((used)) static void __nvme_tcp_stop_queue(struct nvme_tcp_queue *queue)
{
 kernel_sock_shutdown(queue->sock, SHUT_RDWR);
 nvme_tcp_restore_sock_calls(queue);
 cancel_work_sync(&queue->io_work);
}
