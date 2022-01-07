
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trf7970a {int rx_skb; int timeout_work; int state; int dev; } ;


 int ERR_PTR (int) ;
 int cancel_delayed_work (int *) ;
 int dev_dbg (int ,char*,int ,int) ;
 int kfree_skb (int ) ;
 int trf7970a_send_upstream (struct trf7970a*) ;

__attribute__((used)) static void trf7970a_send_err_upstream(struct trf7970a *trf, int errno)
{
 dev_dbg(trf->dev, "Error - state: %d, errno: %d\n", trf->state, errno);

 cancel_delayed_work(&trf->timeout_work);

 kfree_skb(trf->rx_skb);
 trf->rx_skb = ERR_PTR(errno);

 trf7970a_send_upstream(trf);
}
