
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_dev {int dummy; } ;
typedef int __u8 ;


 int NFCMRVL_PB_BAIL_OUT ;
 int nci_set_config (struct nci_dev*,int ,int,int*) ;

__attribute__((used)) static int nfcmrvl_nci_setup(struct nci_dev *ndev)
{
 __u8 val = 1;

 nci_set_config(ndev, NFCMRVL_PB_BAIL_OUT, 1, &val);
 return 0;
}
