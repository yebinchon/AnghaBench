
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_tcp_queue {int dummy; } ;


 int nvmet_tcp_try_send_one (struct nvmet_tcp_queue*,int) ;

__attribute__((used)) static int nvmet_tcp_try_send(struct nvmet_tcp_queue *queue,
  int budget, int *sends)
{
 int i, ret = 0;

 for (i = 0; i < budget; i++) {
  ret = nvmet_tcp_try_send_one(queue, i == budget - 1);
  if (ret <= 0)
   break;
  (*sends)++;
 }

 return ret;
}
