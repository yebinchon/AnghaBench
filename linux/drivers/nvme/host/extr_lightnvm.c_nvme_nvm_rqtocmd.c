
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {void* length; void* control; void* metadata; void* spba; int nsid; int opcode; } ;
struct nvme_nvm_command {TYPE_3__ ph_rw; } ;
struct nvme_ns {TYPE_1__* head; } ;
struct TYPE_5__ {int ppa; } ;
struct nvm_rq {scalar_t__ nr_ppas; scalar_t__ flags; int dma_meta_list; TYPE_2__ ppa_addr; int opcode; } ;
struct TYPE_4__ {int ns_id; } ;


 void* cpu_to_le16 (scalar_t__) ;
 int cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;

__attribute__((used)) static inline void nvme_nvm_rqtocmd(struct nvm_rq *rqd, struct nvme_ns *ns,
        struct nvme_nvm_command *c)
{
 c->ph_rw.opcode = rqd->opcode;
 c->ph_rw.nsid = cpu_to_le32(ns->head->ns_id);
 c->ph_rw.spba = cpu_to_le64(rqd->ppa_addr.ppa);
 c->ph_rw.metadata = cpu_to_le64(rqd->dma_meta_list);
 c->ph_rw.control = cpu_to_le16(rqd->flags);
 c->ph_rw.length = cpu_to_le16(rqd->nr_ppas - 1);
}
