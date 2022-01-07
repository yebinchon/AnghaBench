
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct cw1200_common {int hwbus_priv; TYPE_1__* hwbus_ops; } ;
struct TYPE_2__ {int (* unlock ) (int ) ;int (* lock ) (int ) ;} ;


 int __cw1200_reg_read (struct cw1200_common*,int ,void*,size_t,int ) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

int cw1200_reg_read(struct cw1200_common *priv, u16 addr, void *buf,
   size_t buf_len)
{
 int ret;
 priv->hwbus_ops->lock(priv->hwbus_priv);
 ret = __cw1200_reg_read(priv, addr, buf, buf_len, 0);
 priv->hwbus_ops->unlock(priv->hwbus_priv);
 return ret;
}
