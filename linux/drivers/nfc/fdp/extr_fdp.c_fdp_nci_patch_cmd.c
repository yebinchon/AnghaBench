
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int type ;
struct nci_dev {int dummy; } ;


 int NCI_OP_PROP_PATCH_OID ;
 int nci_prop_cmd (struct nci_dev*,int ,int,int *) ;

__attribute__((used)) static inline int fdp_nci_patch_cmd(struct nci_dev *ndev, u8 type)
{
 return nci_prop_cmd(ndev, NCI_OP_PROP_PATCH_OID, sizeof(type), &type);
}
