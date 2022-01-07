
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
struct rtw_dev {int mac_id_map; } ;


 unsigned long RTW_MAX_MAC_ID_NUM ;
 unsigned long find_first_zero_bit (int ,unsigned long) ;
 int set_bit (unsigned long,int ) ;

__attribute__((used)) static u8 rtw_acquire_macid(struct rtw_dev *rtwdev)
{
 unsigned long mac_id;

 mac_id = find_first_zero_bit(rtwdev->mac_id_map, RTW_MAX_MAC_ID_NUM);
 if (mac_id < RTW_MAX_MAC_ID_NUM)
  set_bit(mac_id, rtwdev->mac_id_map);

 return mac_id;
}
