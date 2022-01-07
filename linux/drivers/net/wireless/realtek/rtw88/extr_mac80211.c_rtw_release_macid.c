
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_dev {int mac_id_map; } ;


 int clear_bit (int ,int ) ;

__attribute__((used)) static void rtw_release_macid(struct rtw_dev *rtwdev, u8 mac_id)
{
 clear_bit(mac_id, rtwdev->mac_id_map);
}
