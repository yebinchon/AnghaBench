
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct qla_qpair {int id; } ;
struct qla_msix_entry {int have_irq; struct qla_qpair* handle; int vector; int name; } ;
struct qla_init_msix_entry {int handler; } ;
struct qla_hw_data {int pdev; } ;
struct TYPE_4__ {int host_no; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 struct qla_init_msix_entry* msix_entries ;
 TYPE_1__* pci_get_drvdata (int ) ;
 int ql_log (int ,TYPE_1__*,int,char*,int ,int) ;
 int ql_log_fatal ;
 int request_irq (int ,int ,int ,int ,struct qla_qpair*) ;
 int scnprintf (int ,int,char*,int ,int ) ;

int qla25xx_request_irq(struct qla_hw_data *ha, struct qla_qpair *qpair,
 struct qla_msix_entry *msix, int vector_type)
{
 const struct qla_init_msix_entry *intr = &msix_entries[vector_type];
 scsi_qla_host_t *vha = pci_get_drvdata(ha->pdev);
 int ret;

 scnprintf(msix->name, sizeof(msix->name),
     "qla2xxx%lu_qpair%d", vha->host_no, qpair->id);
 ret = request_irq(msix->vector, intr->handler, 0, msix->name, qpair);
 if (ret) {
  ql_log(ql_log_fatal, vha, 0x00e6,
      "MSI-X: Unable to register handler -- %x/%d.\n",
      msix->vector, ret);
  return ret;
 }
 msix->have_irq = 1;
 msix->handle = qpair;
 return ret;
}
