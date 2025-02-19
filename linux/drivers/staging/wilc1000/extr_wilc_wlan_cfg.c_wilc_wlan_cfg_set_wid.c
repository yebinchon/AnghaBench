
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;







 int wilc_wlan_cfg_set_bin (int*,int ,int,int*,int) ;
 int wilc_wlan_cfg_set_byte (int*,int ,int,int) ;
 int wilc_wlan_cfg_set_hword (int*,int ,int,int) ;
 int wilc_wlan_cfg_set_str (int*,int ,int,int*,int) ;
 int wilc_wlan_cfg_set_word (int*,int ,int,int ) ;

int wilc_wlan_cfg_set_wid(u8 *frame, u32 offset, u16 id, u8 *buf, int size)
{
 u8 type = (id >> 12) & 0xf;
 int ret = 0;

 switch (type) {
 case 131:
  if (size >= 1)
   ret = wilc_wlan_cfg_set_byte(frame, offset, id, *buf);
  break;

 case 130:
  if (size >= 2)
   ret = wilc_wlan_cfg_set_hword(frame, offset, id,
            *((u16 *)buf));
  break;

 case 128:
  if (size >= 4)
   ret = wilc_wlan_cfg_set_word(frame, offset, id,
           *((u32 *)buf));
  break;

 case 129:
  ret = wilc_wlan_cfg_set_str(frame, offset, id, buf, size);
  break;

 case 132:
  ret = wilc_wlan_cfg_set_bin(frame, offset, id, buf, size);
  break;
 }

 return ret;
}
