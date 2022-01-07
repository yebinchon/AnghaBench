
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evt_priv {scalar_t__ evt_done_cnt; scalar_t__ evt_allocated_buf; scalar_t__ evt_buf; scalar_t__ event_seq; } ;
typedef int addr_t ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ MAX_EVTSZ ;
 scalar_t__ kmalloc (scalar_t__,int ) ;

int r8712_init_evt_priv(struct evt_priv *pevtpriv)
{

 pevtpriv->event_seq = 0;
 pevtpriv->evt_allocated_buf = kmalloc(MAX_EVTSZ + 4, GFP_ATOMIC);

 if (!pevtpriv->evt_allocated_buf)
  return -ENOMEM;
 pevtpriv->evt_buf = pevtpriv->evt_allocated_buf + 4 -
       ((addr_t)(pevtpriv->evt_allocated_buf) & 3);
 pevtpriv->evt_done_cnt = 0;
 return 0;
}
