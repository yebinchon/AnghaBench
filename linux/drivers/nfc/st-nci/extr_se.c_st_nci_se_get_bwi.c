
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* atr; } ;
struct st_nci_info {TYPE_1__ se_info; } ;
struct nci_dev {int dummy; } ;


 int ST_NCI_ATR_DEFAULT_BWI ;
 int ST_NCI_ATR_GET_Y_FROM_TD (int) ;
 scalar_t__ ST_NCI_ATR_TA_PRESENT (int) ;
 scalar_t__ ST_NCI_ATR_TB_PRESENT (int) ;
 int ST_NCI_ESE_MAX_LENGTH ;
 struct st_nci_info* nci_get_drvdata (struct nci_dev*) ;

__attribute__((used)) static u8 st_nci_se_get_bwi(struct nci_dev *ndev)
{
 int i;
 u8 td;
 struct st_nci_info *info = nci_get_drvdata(ndev);


 for (i = 1; i < ST_NCI_ESE_MAX_LENGTH; i++) {
  td = ST_NCI_ATR_GET_Y_FROM_TD(info->se_info.atr[i]);
  if (ST_NCI_ATR_TA_PRESENT(td))
   i++;
  if (ST_NCI_ATR_TB_PRESENT(td)) {
   i++;
   return info->se_info.atr[i] >> 4;
  }
 }
 return ST_NCI_ATR_DEFAULT_BWI;
}
