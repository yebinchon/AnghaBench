
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_fc_local_port {scalar_t__ private; } ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nvme_lport {struct lpfc_vport* vport; } ;


 int KERN_INFO ;
 int LOG_NVME ;
 int kfree (void*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,struct lpfc_nvme_lport*,unsigned int,void*) ;

__attribute__((used)) static void
lpfc_nvme_delete_queue(struct nvme_fc_local_port *pnvme_lport,
         unsigned int qidx,
         void *handle)
{
 struct lpfc_nvme_lport *lport;
 struct lpfc_vport *vport;

 if (!pnvme_lport->private)
  return;

 lport = (struct lpfc_nvme_lport *)pnvme_lport->private;
 vport = lport->vport;

 lpfc_printf_vlog(vport, KERN_INFO, LOG_NVME,
   "6001 ENTER.  lpfc_pnvme x%px, qidx x%x qhandle x%px\n",
   lport, qidx, handle);
 kfree(handle);
}
