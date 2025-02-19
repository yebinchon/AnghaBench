
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ks_wlan_private {int dummy; } ;
struct firmware {unsigned int size; scalar_t__ data; } ;


 int DATA_WINDOW ;
 int ENOMEM ;
 int GCR_A_REG ;
 int GCR_A_REMAP ;
 int GFP_KERNEL ;
 scalar_t__ KS7010_IRAM_ADDRESS ;
 unsigned int ROM_BUFF_SIZE ;
 int kfree (int *) ;
 int * kmalloc (unsigned int,int ) ;
 int ks7010_sdio_data_compare (struct ks_wlan_private*,int ,int *,unsigned int) ;
 int ks7010_sdio_update_index (struct ks_wlan_private*,scalar_t__) ;
 int ks7010_sdio_write (struct ks_wlan_private*,int ,int *,unsigned int) ;
 int ks7010_sdio_writeb (struct ks_wlan_private*,int ,int ) ;
 int memcpy (int *,scalar_t__,unsigned int) ;

__attribute__((used)) static int ks7010_copy_firmware(struct ks_wlan_private *priv,
    const struct firmware *fw_entry)
{
 unsigned int length;
 unsigned int size;
 unsigned int offset;
 unsigned int n = 0;
 u8 *rom_buf;
 int ret;

 rom_buf = kmalloc(ROM_BUFF_SIZE, GFP_KERNEL);
 if (!rom_buf)
  return -ENOMEM;

 length = fw_entry->size;

 do {
  if (length >= ROM_BUFF_SIZE) {
   size = ROM_BUFF_SIZE;
   length = length - ROM_BUFF_SIZE;
  } else {
   size = length;
   length = 0;
  }
  if (size == 0)
   break;

  memcpy(rom_buf, fw_entry->data + n, size);

  offset = n;
  ret = ks7010_sdio_update_index(priv,
            KS7010_IRAM_ADDRESS + offset);
  if (ret)
   goto free_rom_buf;

  ret = ks7010_sdio_write(priv, DATA_WINDOW, rom_buf, size);
  if (ret)
   goto free_rom_buf;

  ret = ks7010_sdio_data_compare(priv,
            DATA_WINDOW, rom_buf, size);
  if (ret)
   goto free_rom_buf;

  n += size;

 } while (size);

 ret = ks7010_sdio_writeb(priv, GCR_A_REG, GCR_A_REMAP);

free_rom_buf:
 kfree(rom_buf);
 return ret;
}
