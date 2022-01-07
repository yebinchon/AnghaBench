
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nci_dev {int dummy; } ;


 int NCI_OP_PROP_SET_PDATA_OID ;
 int nci_prop_cmd (struct nci_dev*,int ,int ,char*) ;

__attribute__((used)) static inline int fdp_nci_set_production_data(struct nci_dev *ndev, u8 len,
           char *data)
{
 return nci_prop_cmd(ndev, NCI_OP_PROP_SET_PDATA_OID, len, data);
}
