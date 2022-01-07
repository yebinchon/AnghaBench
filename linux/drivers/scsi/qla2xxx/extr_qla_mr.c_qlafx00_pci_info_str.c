
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int pdev; } ;


 scalar_t__ pci_is_pcie (int ) ;
 int strlcpy (char*,char*,size_t) ;

char *
qlafx00_pci_info_str(struct scsi_qla_host *vha, char *str, size_t str_len)
{
 struct qla_hw_data *ha = vha->hw;

 if (pci_is_pcie(ha->pdev))
  strlcpy(str, "PCIe iSA", str_len);
 return str;
}
