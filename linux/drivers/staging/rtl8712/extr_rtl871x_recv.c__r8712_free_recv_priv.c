
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recv_priv {int pallocated_frame_buf; } ;


 int kfree (int ) ;
 int r8712_free_recv_priv (struct recv_priv*) ;

void _r8712_free_recv_priv(struct recv_priv *precvpriv)
{
 kfree(precvpriv->pallocated_frame_buf);
 r8712_free_recv_priv(precvpriv);
}
