
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evt_priv {int evt_allocated_buf; } ;


 int kfree (int ) ;

void r8712_free_evt_priv(struct evt_priv *pevtpriv)
{
 kfree(pevtpriv->evt_allocated_buf);
}
