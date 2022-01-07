
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* atr; } ;
struct st21nfca_hci_info {TYPE_1__ se_info; } ;
struct nfc_hci_dev {int dummy; } ;


 int ST21NFCA_ATR_DEFAULT_BWI ;
 int ST21NFCA_ATR_GET_Y_FROM_TD (int) ;
 scalar_t__ ST21NFCA_ATR_TA_PRESENT (int) ;
 scalar_t__ ST21NFCA_ATR_TB_PRESENT (int) ;
 int ST21NFCA_ESE_MAX_LENGTH ;
 struct st21nfca_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;

__attribute__((used)) static u8 st21nfca_se_get_bwi(struct nfc_hci_dev *hdev)
{
 int i;
 u8 td;
 struct st21nfca_hci_info *info = nfc_hci_get_clientdata(hdev);


 for (i = 1; i < ST21NFCA_ESE_MAX_LENGTH; i++) {
  td = ST21NFCA_ATR_GET_Y_FROM_TD(info->se_info.atr[i]);
  if (ST21NFCA_ATR_TA_PRESENT(td))
   i++;
  if (ST21NFCA_ATR_TB_PRESENT(td)) {
   i++;
   return info->se_info.atr[i] >> 4;
  }
 }
 return ST21NFCA_ATR_DEFAULT_BWI;
}
