
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq27xxx_dm_buf {int dirty; int data; int block; int class; } ;
struct bq27xxx_device_info {int opts; int dev; } ;


 int BQ27XXX_DM_BLOCK ;
 int BQ27XXX_DM_CKSUM ;
 int BQ27XXX_DM_CLASS ;
 int BQ27XXX_DM_CTRL ;
 int BQ27XXX_DM_DATA ;
 int BQ27XXX_DM_SZ ;
 int BQ27XXX_MSLEEP (int) ;
 int BQ27XXX_O_CFGUP ;
 int bq27xxx_battery_checksum_dm_block (struct bq27xxx_dm_buf*) ;
 int bq27xxx_battery_set_cfgupdate (struct bq27xxx_device_info*) ;
 int bq27xxx_battery_soft_reset (struct bq27xxx_device_info*) ;
 int bq27xxx_write (struct bq27xxx_device_info*,int ,int ,int) ;
 int bq27xxx_write_block (struct bq27xxx_device_info*,int ,int ,int ) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int bq27xxx_battery_write_dm_block(struct bq27xxx_device_info *di,
       struct bq27xxx_dm_buf *buf)
{
 bool cfgup = di->opts & BQ27XXX_O_CFGUP;
 int ret;

 if (!buf->dirty)
  return 0;

 if (cfgup) {
  ret = bq27xxx_battery_set_cfgupdate(di);
  if (ret < 0)
   return ret;
 }

 ret = bq27xxx_write(di, BQ27XXX_DM_CTRL, 0, 1);
 if (ret < 0)
  goto out;

 ret = bq27xxx_write(di, BQ27XXX_DM_CLASS, buf->class, 1);
 if (ret < 0)
  goto out;

 ret = bq27xxx_write(di, BQ27XXX_DM_BLOCK, buf->block, 1);
 if (ret < 0)
  goto out;

 BQ27XXX_MSLEEP(1);

 ret = bq27xxx_write_block(di, BQ27XXX_DM_DATA, buf->data, BQ27XXX_DM_SZ);
 if (ret < 0)
  goto out;

 ret = bq27xxx_write(di, BQ27XXX_DM_CKSUM,
       bq27xxx_battery_checksum_dm_block(buf), 1);
 if (ret < 0)
  goto out;






 if (cfgup) {
  BQ27XXX_MSLEEP(1);
  ret = bq27xxx_battery_soft_reset(di);
  if (ret < 0)
   return ret;
 } else {
  BQ27XXX_MSLEEP(100);
 }

 buf->dirty = 0;

 return 0;

out:
 if (cfgup)
  bq27xxx_battery_soft_reset(di);

 dev_err(di->dev, "bus error writing chip memory: %d\n", ret);
 return ret;
}
