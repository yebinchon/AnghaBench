
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct nvmet_req {int dummy; } ;
struct nvme_ana_rsp_hdr {int ngrps; int chgcnt; int member_0; } ;
struct nvme_ana_group_desc {int ngrps; int chgcnt; int member_0; } ;
typedef int hdr ;
typedef int __le32 ;


 int GFP_KERNEL ;
 size_t NVMET_MAX_ANAGRPS ;
 int NVMET_MAX_NAMESPACES ;
 int NVME_AEN_BIT_ANA_CHANGE ;
 scalar_t__ NVME_SC_INTERNAL ;
 int cpu_to_le16 (scalar_t__) ;
 int cpu_to_le64 (int ) ;
 int down_read (int *) ;
 int kfree (struct nvme_ana_rsp_hdr*) ;
 struct nvme_ana_rsp_hdr* kmalloc (int,int ) ;
 int nvmet_ana_chgcnt ;
 scalar_t__* nvmet_ana_group_enabled ;
 int nvmet_ana_sem ;
 int nvmet_clear_aen_bit (struct nvmet_req*,int ) ;
 scalar_t__ nvmet_copy_to_sgl (struct nvmet_req*,size_t,struct nvme_ana_rsp_hdr*,int) ;
 size_t nvmet_format_ana_group (struct nvmet_req*,size_t,struct nvme_ana_rsp_hdr*) ;
 int nvmet_req_complete (struct nvmet_req*,scalar_t__) ;
 int up_read (int *) ;

__attribute__((used)) static void nvmet_execute_get_log_page_ana(struct nvmet_req *req)
{
 struct nvme_ana_rsp_hdr hdr = { 0, };
 struct nvme_ana_group_desc *desc;
 size_t offset = sizeof(struct nvme_ana_rsp_hdr);
 size_t len;
 u32 grpid;
 u16 ngrps = 0;
 u16 status;

 status = NVME_SC_INTERNAL;
 desc = kmalloc(sizeof(struct nvme_ana_group_desc) +
   NVMET_MAX_NAMESPACES * sizeof(__le32), GFP_KERNEL);
 if (!desc)
  goto out;

 down_read(&nvmet_ana_sem);
 for (grpid = 1; grpid <= NVMET_MAX_ANAGRPS; grpid++) {
  if (!nvmet_ana_group_enabled[grpid])
   continue;
  len = nvmet_format_ana_group(req, grpid, desc);
  status = nvmet_copy_to_sgl(req, offset, desc, len);
  if (status)
   break;
  offset += len;
  ngrps++;
 }
 for ( ; grpid <= NVMET_MAX_ANAGRPS; grpid++) {
  if (nvmet_ana_group_enabled[grpid])
   ngrps++;
 }

 hdr.chgcnt = cpu_to_le64(nvmet_ana_chgcnt);
 hdr.ngrps = cpu_to_le16(ngrps);
 nvmet_clear_aen_bit(req, NVME_AEN_BIT_ANA_CHANGE);
 up_read(&nvmet_ana_sem);

 kfree(desc);


 status = nvmet_copy_to_sgl(req, 0, &hdr, sizeof(hdr));
out:
 nvmet_req_complete(req, status);
}
