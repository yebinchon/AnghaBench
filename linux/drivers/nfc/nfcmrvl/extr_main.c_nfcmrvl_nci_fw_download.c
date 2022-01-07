
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_dev {int dummy; } ;


 int nfcmrvl_fw_dnld_start (struct nci_dev*,char const*) ;

__attribute__((used)) static int nfcmrvl_nci_fw_download(struct nci_dev *ndev,
       const char *firmware_name)
{
 return nfcmrvl_fw_dnld_start(ndev, firmware_name);
}
