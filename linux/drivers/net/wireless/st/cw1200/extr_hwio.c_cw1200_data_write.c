
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cw1200_common {int buf_id_tx; int hwbus_priv; TYPE_1__* hwbus_ops; } ;
struct TYPE_2__ {int (* unlock ) (int ) ;int (* lock ) (int ) ;} ;


 int MAX_RETRY ;
 int ST90TDS_IN_OUT_QUEUE_REG_ID ;
 int __cw1200_reg_write (struct cw1200_common*,int ,void const*,size_t,int) ;
 int mdelay (int) ;
 int pr_err (char*,int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

int cw1200_data_write(struct cw1200_common *priv, const void *buf,
   size_t buf_len)
{
 int ret, retry = 1;
 int buf_id_tx = priv->buf_id_tx;

 priv->hwbus_ops->lock(priv->hwbus_priv);

 while (retry <= MAX_RETRY) {
  ret = __cw1200_reg_write(priv,
      ST90TDS_IN_OUT_QUEUE_REG_ID, buf,
      buf_len, buf_id_tx);
  if (!ret) {
   buf_id_tx = (buf_id_tx + 1) & 31;
   priv->buf_id_tx = buf_id_tx;
   break;
  } else {
   retry++;
   mdelay(1);
   pr_err("error :[%d]\n", ret);
  }
 }

 priv->hwbus_ops->unlock(priv->hwbus_priv);
 return ret;
}
