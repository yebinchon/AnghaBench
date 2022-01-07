
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wl1271 {int * fw; } ;
typedef int __be32 ;


 int DEBUG_BOOT ;
 int EINVAL ;
 int be32_to_cpup (int *) ;
 int wl1271_boot_upload_firmware_chunk (struct wl1271*,int *,int,int) ;
 int wl1271_debug (int ,char*,int,...) ;
 int wl1271_info (char*,int) ;

int wlcore_boot_upload_firmware(struct wl1271 *wl)
{
 u32 chunks, addr, len;
 int ret = 0;
 u8 *fw;

 fw = wl->fw;
 chunks = be32_to_cpup((__be32 *) fw);
 fw += sizeof(u32);

 wl1271_debug(DEBUG_BOOT, "firmware chunks to be uploaded: %u", chunks);

 while (chunks--) {
  addr = be32_to_cpup((__be32 *) fw);
  fw += sizeof(u32);
  len = be32_to_cpup((__be32 *) fw);
  fw += sizeof(u32);

  if (len > 300000) {
   wl1271_info("firmware chunk too long: %u", len);
   return -EINVAL;
  }
  wl1271_debug(DEBUG_BOOT, "chunk %d addr 0x%x len %u",
        chunks, addr, len);
  ret = wl1271_boot_upload_firmware_chunk(wl, fw, len, addr);
  if (ret != 0)
   break;
  fw += len;
 }

 return ret;
}
