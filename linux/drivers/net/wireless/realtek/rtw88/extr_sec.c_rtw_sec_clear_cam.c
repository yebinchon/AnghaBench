
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct rtw_sec_desc {int cam_map; struct rtw_cam_entry* cam_table; } ;
struct rtw_dev {int dummy; } ;
struct rtw_cam_entry {int valid; int addr; int * key; } ;


 size_t RTW_SEC_CAM_ENTRY_SHIFT ;
 int RTW_SEC_CMD_POLLING ;
 int RTW_SEC_CMD_REG ;
 int RTW_SEC_CMD_WRITE_ENABLE ;
 int RTW_SEC_WRITE_REG ;
 int clear_bit (size_t,int ) ;
 int eth_zero_addr (int ) ;
 int rtw_write32 (struct rtw_dev*,int ,int) ;

void rtw_sec_clear_cam(struct rtw_dev *rtwdev,
         struct rtw_sec_desc *sec,
         u8 hw_key_idx)
{
 struct rtw_cam_entry *cam = &sec->cam_table[hw_key_idx];
 u32 write_cmd;
 u32 command;
 u32 addr;

 clear_bit(hw_key_idx, sec->cam_map);
 cam->valid = 0;
 cam->key = ((void*)0);
 eth_zero_addr(cam->addr);

 write_cmd = RTW_SEC_CMD_WRITE_ENABLE | RTW_SEC_CMD_POLLING;
 addr = hw_key_idx << RTW_SEC_CAM_ENTRY_SHIFT;
 command = write_cmd | addr;
 rtw_write32(rtwdev, RTW_SEC_WRITE_REG, 0);
 rtw_write32(rtwdev, RTW_SEC_CMD_REG, command);
}
