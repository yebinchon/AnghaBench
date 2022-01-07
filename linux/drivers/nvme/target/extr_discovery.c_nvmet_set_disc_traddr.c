
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvmet_req {TYPE_1__* ops; } ;
struct TYPE_4__ {int traddr; } ;
struct nvmet_port {TYPE_2__ disc_addr; } ;
struct TYPE_3__ {int (* disc_traddr ) (struct nvmet_req*,struct nvmet_port*,char*) ;} ;


 int NVMF_TRADDR_SIZE ;
 int memcpy (char*,int ,int ) ;
 int stub1 (struct nvmet_req*,struct nvmet_port*,char*) ;

__attribute__((used)) static void nvmet_set_disc_traddr(struct nvmet_req *req, struct nvmet_port *port,
  char *traddr)
{
 if (req->ops->disc_traddr)
  req->ops->disc_traddr(req, port, traddr);
 else
  memcpy(traddr, port->disc_addr.traddr, NVMF_TRADDR_SIZE);
}
