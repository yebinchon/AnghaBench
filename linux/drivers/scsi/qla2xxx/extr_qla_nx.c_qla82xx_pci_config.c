
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct qla_hw_data {int chip_revision; TYPE_4__* pdev; } ;
struct TYPE_6__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;
struct TYPE_7__ {int revision; } ;


 int pci_set_master (TYPE_4__*) ;
 int pci_set_mwi (TYPE_4__*) ;
 int ql_dbg (int ,TYPE_1__*,int,char*,int ,int) ;
 int ql_dbg_init ;

int
qla82xx_pci_config(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;
 int ret;

 pci_set_master(ha->pdev);
 ret = pci_set_mwi(ha->pdev);
 ha->chip_revision = ha->pdev->revision;
 ql_dbg(ql_dbg_init, vha, 0x0043,
     "Chip revision:%d; pci_set_mwi() returned %d.\n",
     ha->chip_revision, ret);
 return 0;
}
