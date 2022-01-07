
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct qla_hw_data {int curr_window; int pdev; } ;
typedef int scsi_qla_host_t ;


 int QLA2XXX_DRIVER_NAME ;
 scalar_t__ QLA82XX_CRB_DDR_NET ;
 scalar_t__ QLA82XX_CRB_MAX ;
 scalar_t__ QLA82XX_CRB_PCIX_HOST ;
 scalar_t__ QLA82XX_CRB_PCIX_HOST2 ;
 scalar_t__ QLA82XX_PCI_CAMQM_MAX ;
 scalar_t__ QLA82XX_PCI_DIRECT_CRB ;
 int WARN_ON (int) ;
 int * pci_get_drvdata (int ) ;
 int ql_dbg (int ,int *,int,char*,int ,scalar_t__) ;
 int ql_dbg_p3p ;

__attribute__((used)) static inline unsigned long
qla82xx_pci_set_crbwindow(struct qla_hw_data *ha, u64 off)
{
 scsi_qla_host_t *vha = pci_get_drvdata(ha->pdev);

 if ((off >= QLA82XX_CRB_PCIX_HOST) && (off < QLA82XX_CRB_DDR_NET)) {



  return off;
 }

 if ((off >= QLA82XX_CRB_PCIX_HOST) && (off < QLA82XX_CRB_PCIX_HOST2)) {

  if (ha->curr_window != 0)
   WARN_ON(1);
  return off;
 }

 if ((off > QLA82XX_CRB_PCIX_HOST2) && (off < QLA82XX_CRB_MAX)) {

  off = off - QLA82XX_CRB_PCIX_HOST2 + QLA82XX_CRB_PCIX_HOST;

  if (ha->curr_window != 1)
   return off;




  if ((off >= QLA82XX_PCI_DIRECT_CRB) &&
   (off < QLA82XX_PCI_CAMQM_MAX))
   return off;
 }

 ql_dbg(ql_dbg_p3p, vha, 0xb001,
     "%s: Warning: unm_nic_pci_set_crbwindow "
     "called with an unknown address(%llx).\n",
     QLA2XXX_DRIVER_NAME, off);
 return off;
}
