
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;
typedef int u16 ;
struct adapter {int dummy; } ;


 int HW_VAR_CAM_WRITE ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int*) ;

void write_cam(struct adapter *padapter, u8 entry, u16 ctrl, u8 *mac, u8 *key)
{
 unsigned int i, val, addr;
 int j;
 u32 cam_val[2];

 addr = entry << 3;

 for (j = 5; j >= 0; j--) {
  switch (j) {
  case 0:
   val = ctrl | (mac[0] << 16) | (mac[1] << 24);
   break;
  case 1:
   val = mac[2] | (mac[3] << 8) | (mac[4] << 16) | (mac[5] << 24);
   break;
  default:
   i = (j - 2) << 2;
   val = key[i] | (key[i + 1] << 8) | (key[i + 2] << 16) |
         (key[i + 3] << 24);
   break;
  }

  cam_val[0] = val;
  cam_val[1] = addr + (unsigned int)j;

  rtw_hal_set_hwreg(padapter, HW_VAR_CAM_WRITE, (u8 *)cam_val);
 }
}
