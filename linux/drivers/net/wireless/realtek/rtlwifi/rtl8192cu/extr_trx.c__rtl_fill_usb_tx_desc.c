
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le32 ;


 int set_tx_desc_first_seg (int *,int) ;
 int set_tx_desc_last_seg (int *,int) ;
 int set_tx_desc_own (int *,int) ;

__attribute__((used)) static void _rtl_fill_usb_tx_desc(__le32 *txdesc)
{
 set_tx_desc_own(txdesc, 1);
 set_tx_desc_last_seg(txdesc, 1);
 set_tx_desc_first_seg(txdesc, 1);
}
