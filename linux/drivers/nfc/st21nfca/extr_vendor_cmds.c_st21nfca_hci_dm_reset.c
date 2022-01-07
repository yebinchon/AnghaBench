
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_hci_dev {int llc; } ;
struct nfc_dev {int dummy; } ;


 int ST21NFCA_DEVICE_MGNT_GATE ;
 int ST21NFCA_HCI_DM_RESET ;
 struct nfc_hci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int nfc_hci_send_cmd_async (struct nfc_hci_dev*,int ,int ,void*,size_t,int *,int *) ;
 int nfc_llc_start (int ) ;
 int nfc_llc_stop (int ) ;

__attribute__((used)) static int st21nfca_hci_dm_reset(struct nfc_dev *dev, void *data,
     size_t data_len)
{
 int r;
 struct nfc_hci_dev *hdev = nfc_get_drvdata(dev);

 r = nfc_hci_send_cmd_async(hdev, ST21NFCA_DEVICE_MGNT_GATE,
   ST21NFCA_HCI_DM_RESET, data, data_len, ((void*)0), ((void*)0));
 if (r < 0)
  return r;

 r = nfc_llc_stop(hdev->llc);
 if (r < 0)
  return r;

 return nfc_llc_start(hdev->llc);
}
