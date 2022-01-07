
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtw_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;


 int ENOMEM ;
 int kfree (int *) ;
 int * rtw_build_rsvd_page (struct rtw_dev*,struct ieee80211_vif*,int *) ;
 int rtw_download_beacon (struct rtw_dev*,struct ieee80211_vif*) ;
 int rtw_download_drv_rsvd_page (struct rtw_dev*,int *,int ) ;
 int rtw_err (struct rtw_dev*,char*) ;

int rtw_fw_download_rsvd_page(struct rtw_dev *rtwdev, struct ieee80211_vif *vif)
{
 u8 *buf;
 u32 size;
 int ret;

 buf = rtw_build_rsvd_page(rtwdev, vif, &size);
 if (!buf) {
  rtw_err(rtwdev, "failed to build rsvd page pkt\n");
  return -ENOMEM;
 }

 ret = rtw_download_drv_rsvd_page(rtwdev, buf, size);
 if (ret) {
  rtw_err(rtwdev, "failed to download drv rsvd page\n");
  goto free;
 }

 ret = rtw_download_beacon(rtwdev, vif);
 if (ret) {
  rtw_err(rtwdev, "failed to download beacon\n");
  goto free;
 }

free:
 kfree(buf);

 return ret;
}
