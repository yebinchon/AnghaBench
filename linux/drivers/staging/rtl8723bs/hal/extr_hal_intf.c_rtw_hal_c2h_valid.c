
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct c2h_evt_hdr_88xx {int dummy; } ;
struct adapter {int dummy; } ;


 int c2h_evt_valid (struct c2h_evt_hdr_88xx*) ;

bool rtw_hal_c2h_valid(struct adapter *adapter, u8 *buf)
{
 return c2h_evt_valid((struct c2h_evt_hdr_88xx *)buf);
}
