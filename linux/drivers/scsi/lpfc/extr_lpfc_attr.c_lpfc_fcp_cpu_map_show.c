
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_vector_map_info {int flag; int irq; int core_id; int phys_id; int hdwq; int eq; } ;
struct TYPE_2__ {size_t num_possible_cpu; size_t curr_disp_cpu; struct lpfc_vector_map_info* cpu_map; } ;
struct lpfc_hba {scalar_t__ sli_rev; scalar_t__ intr_type; int cfg_fcp_cpu_map; TYPE_1__ sli4_hba; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int LPFC_CPU_MAP_HYPER ;
 int LPFC_CPU_MAP_UNASSIGN ;
 scalar_t__ LPFC_SLI_REV4 ;
 int LPFC_VECTOR_MAP_EMPTY ;
 scalar_t__ MSIX ;
 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int cpu_present (size_t) ;
 int num_online_cpus () ;
 int num_present_cpus () ;
 scalar_t__ scnprintf (char*,int,char*,...) ;

__attribute__((used)) static ssize_t
lpfc_fcp_cpu_map_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *)shost->hostdata;
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_vector_map_info *cpup;
 int len = 0;

 if ((phba->sli_rev != LPFC_SLI_REV4) ||
     (phba->intr_type != MSIX))
  return len;

 switch (phba->cfg_fcp_cpu_map) {
 case 0:
  len += scnprintf(buf + len, PAGE_SIZE-len,
    "fcp_cpu_map: No mapping (%d)\n",
    phba->cfg_fcp_cpu_map);
  return len;
 case 1:
  len += scnprintf(buf + len, PAGE_SIZE-len,
    "fcp_cpu_map: HBA centric mapping (%d): "
    "%d of %d CPUs online from %d possible CPUs\n",
    phba->cfg_fcp_cpu_map, num_online_cpus(),
    num_present_cpus(),
    phba->sli4_hba.num_possible_cpu);
  break;
 }

 while (phba->sli4_hba.curr_disp_cpu <
        phba->sli4_hba.num_possible_cpu) {
  cpup = &phba->sli4_hba.cpu_map[phba->sli4_hba.curr_disp_cpu];

  if (!cpu_present(phba->sli4_hba.curr_disp_cpu))
   len += scnprintf(buf + len, PAGE_SIZE - len,
     "CPU %02d not present\n",
     phba->sli4_hba.curr_disp_cpu);
  else if (cpup->irq == LPFC_VECTOR_MAP_EMPTY) {
   if (cpup->hdwq == LPFC_VECTOR_MAP_EMPTY)
    len += scnprintf(
     buf + len, PAGE_SIZE - len,
     "CPU %02d hdwq None "
     "physid %d coreid %d ht %d ua %d\n",
     phba->sli4_hba.curr_disp_cpu,
     cpup->phys_id, cpup->core_id,
     (cpup->flag & LPFC_CPU_MAP_HYPER),
     (cpup->flag & LPFC_CPU_MAP_UNASSIGN));
   else
    len += scnprintf(
     buf + len, PAGE_SIZE - len,
     "CPU %02d EQ %04d hdwq %04d "
     "physid %d coreid %d ht %d ua %d\n",
     phba->sli4_hba.curr_disp_cpu,
     cpup->eq, cpup->hdwq, cpup->phys_id,
     cpup->core_id,
     (cpup->flag & LPFC_CPU_MAP_HYPER),
     (cpup->flag & LPFC_CPU_MAP_UNASSIGN));
  } else {
   if (cpup->hdwq == LPFC_VECTOR_MAP_EMPTY)
    len += scnprintf(
     buf + len, PAGE_SIZE - len,
     "CPU %02d hdwq None "
     "physid %d coreid %d ht %d ua %d IRQ %d\n",
     phba->sli4_hba.curr_disp_cpu,
     cpup->phys_id,
     cpup->core_id,
     (cpup->flag & LPFC_CPU_MAP_HYPER),
     (cpup->flag & LPFC_CPU_MAP_UNASSIGN),
     cpup->irq);
   else
    len += scnprintf(
     buf + len, PAGE_SIZE - len,
     "CPU %02d EQ %04d hdwq %04d "
     "physid %d coreid %d ht %d ua %d IRQ %d\n",
     phba->sli4_hba.curr_disp_cpu,
     cpup->eq, cpup->hdwq, cpup->phys_id,
     cpup->core_id,
     (cpup->flag & LPFC_CPU_MAP_HYPER),
     (cpup->flag & LPFC_CPU_MAP_UNASSIGN),
     cpup->irq);
  }

  phba->sli4_hba.curr_disp_cpu++;


  if (phba->sli4_hba.curr_disp_cpu <
    phba->sli4_hba.num_possible_cpu &&
    (len >= (PAGE_SIZE - 64))) {
   len += scnprintf(buf + len,
     PAGE_SIZE - len, "more...\n");
   break;
  }
 }

 if (phba->sli4_hba.curr_disp_cpu == phba->sli4_hba.num_possible_cpu)
  phba->sli4_hba.curr_disp_cpu = 0;

 return len;
}
