
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_sec_desc {int cam_map; scalar_t__ default_key_search; } ;


 int RTW_MAX_SEC_CAM_NUM ;
 int RTW_SEC_DEFAULT_KEY_NUM ;
 int find_first_zero_bit (int ,int ) ;
 int find_next_zero_bit (int ,int ,int ) ;

int rtw_sec_get_free_cam(struct rtw_sec_desc *sec)
{




 if (sec->default_key_search)
  return find_next_zero_bit(sec->cam_map, RTW_MAX_SEC_CAM_NUM,
       RTW_SEC_DEFAULT_KEY_NUM);

 return find_first_zero_bit(sec->cam_map, RTW_MAX_SEC_CAM_NUM);
}
