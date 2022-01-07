
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_buf; } ;
struct vnt_private {TYPE_1__ int_buf; } ;


 int kfree (int ) ;

__attribute__((used)) static void vnt_free_int_bufs(struct vnt_private *priv)
{
 kfree(priv->int_buf.data_buf);
}
