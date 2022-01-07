
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct tb_switch {int* drom; int uid; int dma_port; scalar_t__ cap_plug_events; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TB_CFG_SWITCH ;
 int dma_port_flash_read (int ,scalar_t__,int*,int) ;
 int kfree (int*) ;
 int* kzalloc (int,int ) ;
 int tb_drom_read_uid_only (struct tb_switch*,int *) ;
 int tb_sw_read (struct tb_switch*,scalar_t__*,int ,scalar_t__,int) ;

__attribute__((used)) static int tb_drom_copy_nvm(struct tb_switch *sw, u16 *size)
{
 u32 drom_offset;
 int ret;

 if (!sw->dma_port)
  return -ENODEV;

 ret = tb_sw_read(sw, &drom_offset, TB_CFG_SWITCH,
    sw->cap_plug_events + 12, 1);
 if (ret)
  return ret;

 if (!drom_offset)
  return -ENODEV;

 ret = dma_port_flash_read(sw->dma_port, drom_offset + 14, size,
      sizeof(*size));
 if (ret)
  return ret;


 *size += 1 + 8 + 4;
 sw->drom = kzalloc(*size, GFP_KERNEL);
 if (!sw->drom)
  return -ENOMEM;

 ret = dma_port_flash_read(sw->dma_port, drom_offset, sw->drom, *size);
 if (ret)
  goto err_free;





 tb_drom_read_uid_only(sw, &sw->uid);
 return 0;

err_free:
 kfree(sw->drom);
 sw->drom = ((void*)0);
 return ret;
}
