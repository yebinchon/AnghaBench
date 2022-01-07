
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct nvme_fc_local_port {scalar_t__ private; } ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nvme_qhandle {unsigned int qidx; unsigned int index; int cpu_id; } ;
struct lpfc_nvme_lport {struct lpfc_vport* vport; } ;
struct TYPE_2__ {unsigned int max_hw_queues; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_INFO ;
 int LOG_NVME ;
 struct lpfc_nvme_qhandle* kzalloc (int,int ) ;
 TYPE_1__ lpfc_nvme_template ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,char*,unsigned int,int ,unsigned int,struct lpfc_nvme_qhandle*) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static int
lpfc_nvme_create_queue(struct nvme_fc_local_port *pnvme_lport,
         unsigned int qidx, u16 qsize,
         void **handle)
{
 struct lpfc_nvme_lport *lport;
 struct lpfc_vport *vport;
 struct lpfc_nvme_qhandle *qhandle;
 char *str;

 if (!pnvme_lport->private)
  return -ENOMEM;

 lport = (struct lpfc_nvme_lport *)pnvme_lport->private;
 vport = lport->vport;
 qhandle = kzalloc(sizeof(struct lpfc_nvme_qhandle), GFP_KERNEL);
 if (qhandle == ((void*)0))
  return -ENOMEM;

 qhandle->cpu_id = raw_smp_processor_id();
 qhandle->qidx = qidx;





 if (qidx) {
  str = "IO ";
  qhandle->index = ((qidx - 1) %
   lpfc_nvme_template.max_hw_queues);
 } else {
  str = "ADM";
  qhandle->index = qidx;
 }

 lpfc_printf_vlog(vport, KERN_INFO, LOG_NVME,
    "6073 Binding %s HdwQueue %d  (cpu %d) to "
    "hdw_queue %d qhandle x%px\n", str,
    qidx, qhandle->cpu_id, qhandle->index, qhandle);
 *handle = (void *)qhandle;
 return 0;
}
