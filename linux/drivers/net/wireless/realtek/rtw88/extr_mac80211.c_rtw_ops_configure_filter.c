
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int rcr; } ;
struct rtw_dev {int mutex; TYPE_1__ hal; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;


 int BIT_AAP ;
 int BIT_AB ;
 int BIT_ACRC32 ;
 int BIT_AM ;
 int BIT_CBSSID_BCN ;
 int BIT_CBSSID_DATA ;
 unsigned int FIF_ALLMULTI ;
 unsigned int FIF_BCN_PRBRESP_PROMISC ;
 unsigned int FIF_FCSFAIL ;
 unsigned int FIF_OTHER_BSS ;
 int REG_RCR ;
 int RTW_DBG_RX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtw_dbg (struct rtw_dev*,int ,char*,unsigned int,unsigned int,int) ;
 int rtw_write32 (struct rtw_dev*,int ,int) ;

__attribute__((used)) static void rtw_ops_configure_filter(struct ieee80211_hw *hw,
         unsigned int changed_flags,
         unsigned int *new_flags,
         u64 multicast)
{
 struct rtw_dev *rtwdev = hw->priv;

 *new_flags &= FIF_ALLMULTI | FIF_OTHER_BSS | FIF_FCSFAIL |
        FIF_BCN_PRBRESP_PROMISC;

 mutex_lock(&rtwdev->mutex);

 if (changed_flags & FIF_ALLMULTI) {
  if (*new_flags & FIF_ALLMULTI)
   rtwdev->hal.rcr |= BIT_AM | BIT_AB;
  else
   rtwdev->hal.rcr &= ~(BIT_AM | BIT_AB);
 }
 if (changed_flags & FIF_FCSFAIL) {
  if (*new_flags & FIF_FCSFAIL)
   rtwdev->hal.rcr |= BIT_ACRC32;
  else
   rtwdev->hal.rcr &= ~(BIT_ACRC32);
 }
 if (changed_flags & FIF_OTHER_BSS) {
  if (*new_flags & FIF_OTHER_BSS)
   rtwdev->hal.rcr |= BIT_AAP;
  else
   rtwdev->hal.rcr &= ~(BIT_AAP);
 }
 if (changed_flags & FIF_BCN_PRBRESP_PROMISC) {
  if (*new_flags & FIF_BCN_PRBRESP_PROMISC)
   rtwdev->hal.rcr &= ~(BIT_CBSSID_BCN | BIT_CBSSID_DATA);
  else
   rtwdev->hal.rcr |= BIT_CBSSID_BCN;
 }

 rtw_dbg(rtwdev, RTW_DBG_RX,
  "config rx filter, changed=0x%08x, new=0x%08x, rcr=0x%08x\n",
  changed_flags, *new_flags, rtwdev->hal.rcr);

 rtw_write32(rtwdev, REG_RCR, rtwdev->hal.rcr);

 mutex_unlock(&rtwdev->mutex);
}
