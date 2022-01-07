
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;


 scalar_t__ WILC_MAX_CFG_FRAME_SIZE ;
 int memcpy (int *,int *,scalar_t__) ;
 int put_unaligned_le16 (scalar_t__,int *) ;

__attribute__((used)) static int wilc_wlan_cfg_set_str(u8 *frame, u32 offset, u16 id, u8 *str,
     u32 size)
{
 if ((offset + size + 4) >= WILC_MAX_CFG_FRAME_SIZE)
  return 0;

 put_unaligned_le16(id, &frame[offset]);
 put_unaligned_le16(size, &frame[offset + 2]);
 if (str && size != 0)
  memcpy(&frame[offset + 4], str, size);

 return (size + 4);
}
