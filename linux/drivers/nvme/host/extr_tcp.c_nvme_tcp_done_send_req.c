
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_tcp_queue {int * request; } ;



__attribute__((used)) static inline void nvme_tcp_done_send_req(struct nvme_tcp_queue *queue)
{
 queue->request = ((void*)0);
}
