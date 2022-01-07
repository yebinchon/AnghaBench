
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int RATEID_IDX_B ;
 int RATEID_IDX_G ;
 unsigned char WIRELESS_11B ;

u8 rtw_get_mgntframe_raid(struct adapter *adapter, unsigned char network_type)
{

 u8 raid;
 raid = (network_type & WIRELESS_11B) ? RATEID_IDX_B : RATEID_IDX_G;
 return raid;
}
