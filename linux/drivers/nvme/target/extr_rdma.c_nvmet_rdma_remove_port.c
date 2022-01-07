
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {int dummy; } ;
struct nvmet_port {int priv; } ;


 int rdma_destroy_id (struct rdma_cm_id*) ;
 struct rdma_cm_id* xchg (int *,int *) ;

__attribute__((used)) static void nvmet_rdma_remove_port(struct nvmet_port *port)
{
 struct rdma_cm_id *cm_id = xchg(&port->priv, ((void*)0));

 if (cm_id)
  rdma_destroy_id(cm_id);
}
