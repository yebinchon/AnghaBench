
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xmit_frame {int dummy; } ;
struct tx_desc {int txdw9; int txdw8; int txdw7; int txdw6; int txdw5; int txdw4; int txdw3; int txdw2; int txdw1; int txdw0; } ;


 int rtl8723b_cal_txdesc_chksum (struct tx_desc*) ;
 int rtl8723b_fill_default_txdesc (struct xmit_frame*,int *) ;

void rtl8723b_update_txdesc(struct xmit_frame *pxmitframe, u8 *pbuf)
{
 struct tx_desc *pdesc;

 rtl8723b_fill_default_txdesc(pxmitframe, pbuf);

 pdesc = (struct tx_desc *)pbuf;
 pdesc->txdw0 = pdesc->txdw0;
 pdesc->txdw1 = pdesc->txdw1;
 pdesc->txdw2 = pdesc->txdw2;
 pdesc->txdw3 = pdesc->txdw3;
 pdesc->txdw4 = pdesc->txdw4;
 pdesc->txdw5 = pdesc->txdw5;
 pdesc->txdw6 = pdesc->txdw6;
 pdesc->txdw7 = pdesc->txdw7;
 pdesc->txdw8 = pdesc->txdw8;
 pdesc->txdw9 = pdesc->txdw9;

 rtl8723b_cal_txdesc_chksum(pdesc);
}
