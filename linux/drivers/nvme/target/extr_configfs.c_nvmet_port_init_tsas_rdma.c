
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cms; int prtype; int qptype; } ;
struct TYPE_5__ {TYPE_1__ rdma; } ;
struct TYPE_6__ {TYPE_2__ tsas; } ;
struct nvmet_port {TYPE_3__ disc_addr; } ;


 int NVMF_RDMA_CMS_RDMA_CM ;
 int NVMF_RDMA_PRTYPE_NOT_SPECIFIED ;
 int NVMF_RDMA_QPTYPE_CONNECTED ;

__attribute__((used)) static void nvmet_port_init_tsas_rdma(struct nvmet_port *port)
{
 port->disc_addr.tsas.rdma.qptype = NVMF_RDMA_QPTYPE_CONNECTED;
 port->disc_addr.tsas.rdma.prtype = NVMF_RDMA_PRTYPE_NOT_SPECIFIED;
 port->disc_addr.tsas.rdma.cms = NVMF_RDMA_CMS_RDMA_CM;
}
