
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {struct nvmet_port* context; } ;
struct nvmet_rdma_queue {int dummy; } ;
struct nvmet_port {int priv; } ;


 struct rdma_cm_id* xchg (int *,int *) ;

__attribute__((used)) static int nvmet_rdma_device_removal(struct rdma_cm_id *cm_id,
  struct nvmet_rdma_queue *queue)
{
 struct nvmet_port *port;

 if (queue) {





  return 0;
 }

 port = cm_id->context;







 if (xchg(&port->priv, ((void*)0)) != cm_id)
  return 0;





 return 1;
}
