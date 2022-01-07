
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct nvmf_disc_rsp_page_hdr {struct nvmf_disc_rsp_page_entry* entries; } ;
struct TYPE_4__ {int common; } ;
struct nvmf_disc_rsp_page_entry {int subnqn; TYPE_1__ tsas; int traddr; int trsvcid; int subtype; void* asqsz; void* cntlid; int portid; int treq; int adrfam; int trtype; } ;
struct TYPE_5__ {char* common; } ;
struct TYPE_6__ {char* trsvcid; TYPE_2__ tsas; int portid; int treq; int adrfam; int trtype; } ;
struct nvmet_port {TYPE_3__ disc_addr; } ;


 int NVME_AQ_DEPTH ;
 int NVME_CNTLID_DYNAMIC ;
 int NVMF_NQN_SIZE ;
 int NVMF_TRADDR_SIZE ;
 int NVMF_TRSVCID_SIZE ;
 int NVMF_TSAS_SIZE ;
 void* cpu_to_le16 (int ) ;
 int memcpy (int ,char*,int ) ;
 int strncpy (int ,char*,int ) ;

__attribute__((used)) static void nvmet_format_discovery_entry(struct nvmf_disc_rsp_page_hdr *hdr,
  struct nvmet_port *port, char *subsys_nqn, char *traddr,
  u8 type, u32 numrec)
{
 struct nvmf_disc_rsp_page_entry *e = &hdr->entries[numrec];

 e->trtype = port->disc_addr.trtype;
 e->adrfam = port->disc_addr.adrfam;
 e->treq = port->disc_addr.treq;
 e->portid = port->disc_addr.portid;

 e->cntlid = cpu_to_le16(NVME_CNTLID_DYNAMIC);
 e->asqsz = cpu_to_le16(NVME_AQ_DEPTH);
 e->subtype = type;
 memcpy(e->trsvcid, port->disc_addr.trsvcid, NVMF_TRSVCID_SIZE);
 memcpy(e->traddr, traddr, NVMF_TRADDR_SIZE);
 memcpy(e->tsas.common, port->disc_addr.tsas.common, NVMF_TSAS_SIZE);
 strncpy(e->subnqn, subsys_nqn, NVMF_NQN_SIZE);
}
