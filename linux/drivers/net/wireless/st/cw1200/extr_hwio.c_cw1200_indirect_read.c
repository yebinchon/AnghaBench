
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct cw1200_common {int hwbus_priv; TYPE_1__* hwbus_ops; } ;
struct TYPE_2__ {int (* unlock ) (int ) ;int (* lock ) (int ) ;} ;


 int EINVAL ;
 int ST90TDS_CONFIG_REG_ID ;
 int ST90TDS_SRAM_BASE_ADDR_REG_ID ;
 int __cw1200_reg_read (struct cw1200_common*,int ,void*,size_t,int ) ;
 int __cw1200_reg_read_32 (struct cw1200_common*,int ,int*) ;
 int __cw1200_reg_write_32 (struct cw1200_common*,int ,int) ;
 int mdelay (int) ;
 int pr_err (char*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

int cw1200_indirect_read(struct cw1200_common *priv, u32 addr, void *buf,
    size_t buf_len, u32 prefetch, u16 port_addr)
{
 u32 val32 = 0;
 int i, ret;

 if ((buf_len / 2) >= 0x1000) {
  pr_err("Can't read more than 0xfff words.\n");
  return -EINVAL;
 }

 priv->hwbus_ops->lock(priv->hwbus_priv);

 ret = __cw1200_reg_write_32(priv, ST90TDS_SRAM_BASE_ADDR_REG_ID, addr);
 if (ret < 0) {
  pr_err("Can't write address register.\n");
  goto out;
 }


 ret = __cw1200_reg_read_32(priv, ST90TDS_CONFIG_REG_ID, &val32);
 if (ret < 0) {
  pr_err("Can't read config register.\n");
  goto out;
 }


 ret = __cw1200_reg_write_32(priv, ST90TDS_CONFIG_REG_ID,
     val32 | prefetch);
 if (ret < 0) {
  pr_err("Can't write prefetch bit.\n");
  goto out;
 }


 for (i = 0; i < 20; i++) {
  ret = __cw1200_reg_read_32(priv, ST90TDS_CONFIG_REG_ID, &val32);
  if (ret < 0) {
   pr_err("Can't check prefetch bit.\n");
   goto out;
  }
  if (!(val32 & prefetch))
   break;

  mdelay(i);
 }

 if (val32 & prefetch) {
  pr_err("Prefetch bit is not cleared.\n");
  goto out;
 }


 ret = __cw1200_reg_read(priv, port_addr, buf, buf_len, 0);
 if (ret < 0) {
  pr_err("Can't read data port.\n");
  goto out;
 }

out:
 priv->hwbus_ops->unlock(priv->hwbus_priv);
 return ret;
}
