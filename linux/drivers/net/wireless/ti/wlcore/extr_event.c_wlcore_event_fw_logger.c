
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct wl1271 {int dummy; } ;
struct fw_logger_information {void* actual_buff_size; void* buff_write_ptr; void* buff_read_ptr; void* max_buff_size; } ;
typedef int fw_log ;


 int GFP_KERNEL ;
 size_t WL18XX_DATA_RAM_BASE_ADDRESS ;
 size_t WL18XX_LOGGER_BUFF_OFFSET ;
 size_t WL18XX_LOGGER_READ_POINT_OFFSET ;
 size_t WL18XX_LOGGER_SDIO_BUFF_ADDR ;
 int WL18XX_LOGGER_SDIO_BUFF_MAX ;
 void* cpu_to_le32 (int ) ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;
 int le32_to_cpu (void*) ;
 int memcpy (struct fw_logger_information*,int *,int) ;
 size_t min (size_t,size_t) ;
 int wl1271_error (char*,...) ;
 int wl12xx_copy_fwlog (struct wl1271*,int *,size_t) ;
 int wlcore_read (struct wl1271*,size_t,int *,int ,int) ;
 int wlcore_write32 (struct wl1271*,size_t,void*) ;

int wlcore_event_fw_logger(struct wl1271 *wl)
{
 int ret;
 struct fw_logger_information fw_log;
 u8 *buffer;
 u32 internal_fw_addrbase = WL18XX_DATA_RAM_BASE_ADDRESS;
 u32 addr = WL18XX_LOGGER_SDIO_BUFF_ADDR;
 u32 end_buff_addr = WL18XX_LOGGER_SDIO_BUFF_ADDR +
    WL18XX_LOGGER_BUFF_OFFSET;
 u32 available_len;
 u32 actual_len;
 u32 clear_addr;
 size_t len;
 u32 start_loc;

 buffer = kzalloc(WL18XX_LOGGER_SDIO_BUFF_MAX, GFP_KERNEL);
 if (!buffer) {
  wl1271_error("Fail to allocate fw logger memory");
  fw_log.actual_buff_size = cpu_to_le32(0);
  goto out;
 }

 ret = wlcore_read(wl, addr, buffer, WL18XX_LOGGER_SDIO_BUFF_MAX,
     0);
 if (ret < 0) {
  wl1271_error("Fail to read logger buffer, error_id = %d",
        ret);
  fw_log.actual_buff_size = cpu_to_le32(0);
  goto free_out;
 }

 memcpy(&fw_log, buffer, sizeof(fw_log));

 if (le32_to_cpu(fw_log.actual_buff_size) == 0)
  goto free_out;

 actual_len = le32_to_cpu(fw_log.actual_buff_size);
 start_loc = (le32_to_cpu(fw_log.buff_read_ptr) -
   internal_fw_addrbase) - addr;
 end_buff_addr += le32_to_cpu(fw_log.max_buff_size);
 available_len = end_buff_addr -
   (le32_to_cpu(fw_log.buff_read_ptr) -
     internal_fw_addrbase);
 actual_len = min(actual_len, available_len);
 len = actual_len;

 wl12xx_copy_fwlog(wl, &buffer[start_loc], len);
 clear_addr = addr + start_loc + le32_to_cpu(fw_log.actual_buff_size) +
   internal_fw_addrbase;

 len = le32_to_cpu(fw_log.actual_buff_size) - len;
 if (len) {
  wl12xx_copy_fwlog(wl,
      &buffer[WL18XX_LOGGER_BUFF_OFFSET],
      len);
  clear_addr = addr + WL18XX_LOGGER_BUFF_OFFSET + len +
    internal_fw_addrbase;
 }


 if (clear_addr != le32_to_cpu(fw_log.buff_write_ptr)) {
  wl1271_error("Calculate of clear addr Clear = %x, write = %x",
        clear_addr, le32_to_cpu(fw_log.buff_write_ptr));
 }


 ret = wlcore_write32(wl, addr + WL18XX_LOGGER_READ_POINT_OFFSET,
        fw_log.buff_write_ptr);
free_out:
 kfree(buffer);
out:
 return le32_to_cpu(fw_log.actual_buff_size);
}
