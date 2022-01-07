
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int WILC_MAX_CFG_FRAME_SIZE ;
 int put_unaligned_le16 (int ,int *) ;

int wilc_wlan_cfg_get_wid(u8 *frame, u32 offset, u16 id)
{
 if ((offset + 2) >= WILC_MAX_CFG_FRAME_SIZE)
  return 0;

 put_unaligned_le16(id, &frame[offset]);

 return 2;
}
