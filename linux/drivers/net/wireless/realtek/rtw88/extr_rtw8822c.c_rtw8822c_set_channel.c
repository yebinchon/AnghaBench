
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_dev {int dummy; } ;


 int rtw8822c_set_channel_bb (struct rtw_dev*,int ,int ,int ) ;
 int rtw8822c_set_channel_rf (struct rtw_dev*,int ,int ) ;
 int rtw8822c_toggle_igi (struct rtw_dev*) ;
 int rtw_set_channel_mac (struct rtw_dev*,int ,int ,int ) ;

__attribute__((used)) static void rtw8822c_set_channel(struct rtw_dev *rtwdev, u8 channel, u8 bw,
     u8 primary_chan_idx)
{
 rtw8822c_set_channel_bb(rtwdev, channel, bw, primary_chan_idx);
 rtw_set_channel_mac(rtwdev, channel, bw, primary_chan_idx);
 rtw8822c_set_channel_rf(rtwdev, channel, bw);
 rtw8822c_toggle_igi(rtwdev);
}
