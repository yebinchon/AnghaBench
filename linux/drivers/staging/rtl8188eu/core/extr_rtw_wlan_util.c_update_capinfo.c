
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct mlme_ext_info {scalar_t__ preamble_mode; scalar_t__ slotTime; } ;
struct mlme_ext_priv {int cur_wireless_mode; struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 int HW_VAR_ACK_PREAMBLE ;
 int HW_VAR_SLOT_TIME ;
 scalar_t__ NON_SHORT_SLOT_TIME ;
 scalar_t__ PREAMBLE_LONG ;
 scalar_t__ PREAMBLE_SHORT ;
 scalar_t__ SHORT_SLOT_TIME ;
 int WIRELESS_11A ;
 int WIRELESS_11G ;
 int WIRELESS_11_24N ;
 int WIRELESS_11_5N ;
 int cIBSS ;
 int cShortPreamble ;
 int cShortSlotTime ;
 int rtw_hal_set_hwreg (struct adapter*,int ,scalar_t__*) ;

void update_capinfo(struct adapter *Adapter, u16 updateCap)
{
 struct mlme_ext_priv *pmlmeext = &Adapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 bool ShortPreamble;




 if (updateCap & cShortPreamble) {
  if (pmlmeinfo->preamble_mode != PREAMBLE_SHORT) {
   ShortPreamble = 1;
   pmlmeinfo->preamble_mode = PREAMBLE_SHORT;
   rtw_hal_set_hwreg(Adapter, HW_VAR_ACK_PREAMBLE, (u8 *)&ShortPreamble);
  }
 } else {
  if (pmlmeinfo->preamble_mode != PREAMBLE_LONG) {
   ShortPreamble = 0;
   pmlmeinfo->preamble_mode = PREAMBLE_LONG;
   rtw_hal_set_hwreg(Adapter, HW_VAR_ACK_PREAMBLE, (u8 *)&ShortPreamble);
  }
 }

 if (updateCap & cIBSS) {

  pmlmeinfo->slotTime = NON_SHORT_SLOT_TIME;
 } else {
  if (pmlmeext->cur_wireless_mode & (WIRELESS_11G | WIRELESS_11_24N)) {
   if (updateCap & cShortSlotTime) {
    if (pmlmeinfo->slotTime != SHORT_SLOT_TIME)
     pmlmeinfo->slotTime = SHORT_SLOT_TIME;
   } else {
    if (pmlmeinfo->slotTime != NON_SHORT_SLOT_TIME)
     pmlmeinfo->slotTime = NON_SHORT_SLOT_TIME;
   }
  } else if (pmlmeext->cur_wireless_mode & (WIRELESS_11A | WIRELESS_11_5N)) {
   pmlmeinfo->slotTime = SHORT_SLOT_TIME;
  } else {

   pmlmeinfo->slotTime = NON_SHORT_SLOT_TIME;
  }
 }

 rtw_hal_set_hwreg(Adapter, HW_VAR_SLOT_TIME, &pmlmeinfo->slotTime);
}
