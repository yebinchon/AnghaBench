
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct wl1251 {size_t* nvs; size_t nvs_len; int fw_len; } ;


 size_t ALIGN (size_t,int) ;
 int DEBUG_BOOT ;
 int ENODEV ;
 int WL1251_PART_DOWN_MEM_SIZE ;
 int WL1251_PART_DOWN_REG_SIZE ;
 int WL1251_PART_DOWN_REG_START ;
 int wl1251_debug (int ,char*,int,size_t) ;
 int wl1251_mem_write32 (struct wl1251*,int,size_t) ;
 int wl1251_set_partition (struct wl1251*,int,int ,int ,int ) ;

__attribute__((used)) static int wl1251_boot_upload_nvs(struct wl1251 *wl)
{
 size_t nvs_len, nvs_bytes_written, burst_len;
 int nvs_start, i;
 u32 dest_addr, val;
 u8 *nvs_ptr, *nvs;

 nvs = wl->nvs;
 if (nvs == ((void*)0))
  return -ENODEV;

 nvs_ptr = nvs;

 nvs_len = wl->nvs_len;
 nvs_start = wl->fw_len;
 while (nvs_ptr[0]) {
  burst_len = nvs_ptr[0];
  dest_addr = (nvs_ptr[1] & 0xfe) | ((u32)(nvs_ptr[2] << 8));


  nvs_ptr += 3;

  for (i = 0; i < burst_len; i++) {
   val = (nvs_ptr[0] | (nvs_ptr[1] << 8)
          | (nvs_ptr[2] << 16) | (nvs_ptr[3] << 24));

   wl1251_debug(DEBUG_BOOT,
         "nvs burst write 0x%x: 0x%x",
         dest_addr, val);
   wl1251_mem_write32(wl, dest_addr, val);

   nvs_ptr += 4;
   dest_addr += 4;
  }
 }





 nvs_ptr += 7;
 nvs_len -= nvs_ptr - nvs;
 nvs_len = ALIGN(nvs_len, 4);


 wl1251_set_partition(wl, nvs_start,
        WL1251_PART_DOWN_MEM_SIZE,
        WL1251_PART_DOWN_REG_START,
        WL1251_PART_DOWN_REG_SIZE);


 nvs_bytes_written = 0;
 while (nvs_bytes_written < nvs_len) {
  val = (nvs_ptr[0] | (nvs_ptr[1] << 8)
         | (nvs_ptr[2] << 16) | (nvs_ptr[3] << 24));

  wl1251_debug(DEBUG_BOOT,
        "nvs write table 0x%x: 0x%x",
        nvs_start, val);
  wl1251_mem_write32(wl, nvs_start, val);

  nvs_ptr += 4;
  nvs_bytes_written += 4;
  nvs_start += 4;
 }

 return 0;
}
