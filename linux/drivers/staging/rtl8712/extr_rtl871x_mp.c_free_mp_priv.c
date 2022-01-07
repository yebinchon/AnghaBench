
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_priv {int pallocated_mp_xmitframe_buf; } ;


 int kfree (int ) ;

__attribute__((used)) static int free_mp_priv(struct mp_priv *pmp_priv)
{
 kfree(pmp_priv->pallocated_mp_xmitframe_buf);
 return 0;
}
