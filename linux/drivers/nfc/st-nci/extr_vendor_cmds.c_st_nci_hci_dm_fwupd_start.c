
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_dev {int fw_download_in_progress; } ;
struct nci_dev {int dummy; } ;


 int ST_NCI_DEVICE_MGNT_GATE ;
 int ST_NCI_HCI_DM_FWUPD_START ;
 int nci_hci_send_cmd (struct nci_dev*,int ,int ,void*,size_t,int *) ;
 struct nci_dev* nfc_get_drvdata (struct nfc_dev*) ;

__attribute__((used)) static int st_nci_hci_dm_fwupd_start(struct nfc_dev *dev, void *data,
         size_t data_len)
{
 int r;
 struct nci_dev *ndev = nfc_get_drvdata(dev);

 dev->fw_download_in_progress = 1;
 r = nci_hci_send_cmd(ndev, ST_NCI_DEVICE_MGNT_GATE,
   ST_NCI_HCI_DM_FWUPD_START, data, data_len, ((void*)0));
 if (r)
  dev->fw_download_in_progress = 0;

 return r;
}
