
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cw1200_common {int hwbus_priv; TYPE_1__* hwbus_ops; } ;
struct TYPE_2__ {int (* unlock ) (int ) ;int (* lock ) (int ) ;} ;


 int EINVAL ;
 int ST90TDS_SRAM_BASE_ADDR_REG_ID ;
 int ST90TDS_SRAM_DPORT_REG_ID ;
 int __cw1200_reg_write (struct cw1200_common*,int ,void const*,size_t,int ) ;
 int __cw1200_reg_write_32 (struct cw1200_common*,int ,int ) ;
 int pr_err (char*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

int cw1200_apb_write(struct cw1200_common *priv, u32 addr, const void *buf,
   size_t buf_len)
{
 int ret;

 if ((buf_len / 2) >= 0x1000) {
  pr_err("Can't write more than 0xfff words.\n");
  return -EINVAL;
 }

 priv->hwbus_ops->lock(priv->hwbus_priv);


 ret = __cw1200_reg_write_32(priv, ST90TDS_SRAM_BASE_ADDR_REG_ID, addr);
 if (ret < 0) {
  pr_err("Can't write address register.\n");
  goto out;
 }


 ret = __cw1200_reg_write(priv, ST90TDS_SRAM_DPORT_REG_ID,
     buf, buf_len, 0);
 if (ret < 0) {
  pr_err("Can't write data port.\n");
  goto out;
 }

out:
 priv->hwbus_ops->unlock(priv->hwbus_priv);
 return ret;
}
