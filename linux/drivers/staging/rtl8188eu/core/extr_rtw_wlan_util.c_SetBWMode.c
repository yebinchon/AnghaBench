
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;
typedef enum ht_channel_width { ____Placeholder_ht_channel_width } ht_channel_width ;


 int rtw_hal_set_bwmode (struct adapter*,int,unsigned char) ;
 int rtw_set_oper_bw (struct adapter*,unsigned short) ;
 int rtw_set_oper_choffset (struct adapter*,unsigned char) ;

void SetBWMode(struct adapter *padapter, unsigned short bwmode,
        unsigned char channel_offset)
{

 rtw_set_oper_bw(padapter, bwmode);
 rtw_set_oper_choffset(padapter, channel_offset);

 rtw_hal_set_bwmode(padapter, (enum ht_channel_width)bwmode, channel_offset);
}
