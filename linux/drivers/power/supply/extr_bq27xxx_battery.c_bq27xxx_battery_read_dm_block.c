
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct bq27xxx_dm_buf {int has_data; int dirty; int data; int block; int class; } ;
struct bq27xxx_device_info {int dev; } ;


 int BQ27XXX_DM_BLOCK ;
 int BQ27XXX_DM_CKSUM ;
 int BQ27XXX_DM_CLASS ;
 int BQ27XXX_DM_DATA ;
 int BQ27XXX_DM_SZ ;
 int BQ27XXX_MSLEEP (int) ;
 int EINVAL ;
 scalar_t__ bq27xxx_battery_checksum_dm_block (struct bq27xxx_dm_buf*) ;
 int bq27xxx_read (struct bq27xxx_device_info*,int ,int) ;
 int bq27xxx_read_block (struct bq27xxx_device_info*,int ,int ,int ) ;
 int bq27xxx_write (struct bq27xxx_device_info*,int ,int ,int) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int bq27xxx_battery_read_dm_block(struct bq27xxx_device_info *di,
      struct bq27xxx_dm_buf *buf)
{
 int ret;

 buf->has_data = 0;

 ret = bq27xxx_write(di, BQ27XXX_DM_CLASS, buf->class, 1);
 if (ret < 0)
  goto out;

 ret = bq27xxx_write(di, BQ27XXX_DM_BLOCK, buf->block, 1);
 if (ret < 0)
  goto out;

 BQ27XXX_MSLEEP(1);

 ret = bq27xxx_read_block(di, BQ27XXX_DM_DATA, buf->data, BQ27XXX_DM_SZ);
 if (ret < 0)
  goto out;

 ret = bq27xxx_read(di, BQ27XXX_DM_CKSUM, 1);
 if (ret < 0)
  goto out;

 if ((u8)ret != bq27xxx_battery_checksum_dm_block(buf)) {
  ret = -EINVAL;
  goto out;
 }

 buf->has_data = 1;
 buf->dirty = 0;

 return 0;

out:
 dev_err(di->dev, "bus error reading chip memory: %d\n", ret);
 return ret;
}
