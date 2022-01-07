
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct adapter {int dummy; } ;


 unsigned char HAL_PRIME_CHNL_OFFSET_DONT_CARE ;
 unsigned char HAL_PRIME_CHNL_OFFSET_LOWER ;
 unsigned short HT_CHANNEL_WIDTH_20 ;
 int SetBWMode (struct adapter*,unsigned short,unsigned char) ;
 int rtw_hal_set_chan (struct adapter*,unsigned char) ;
 int rtw_set_oper_bw (struct adapter*,unsigned short) ;
 int rtw_set_oper_ch (struct adapter*,unsigned char) ;
 int rtw_set_oper_choffset (struct adapter*,unsigned char) ;

void set_channel_bwmode(struct adapter *padapter, unsigned char channel, unsigned char channel_offset, unsigned short bwmode)
{
 u8 center_ch;

 if ((bwmode == HT_CHANNEL_WIDTH_20) ||
     (channel_offset == HAL_PRIME_CHNL_OFFSET_DONT_CARE)) {

  center_ch = channel;
 } else {

  if (channel_offset == HAL_PRIME_CHNL_OFFSET_LOWER) {

   center_ch = channel + 2;
  } else {

   center_ch = channel - 2;
  }
 }



 rtw_set_oper_ch(padapter, channel);
 rtw_set_oper_bw(padapter, bwmode);
 rtw_set_oper_choffset(padapter, channel_offset);

 rtw_hal_set_chan(padapter, center_ch);
 SetBWMode(padapter, bwmode, channel_offset);
}
