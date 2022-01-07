
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stub_priv {int dummy; } ;
struct stub_device {int priv_lock; int priv_free; int priv_tx; int priv_init; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct stub_priv* stub_priv_pop_from_listhead (int *) ;

__attribute__((used)) static struct stub_priv *stub_priv_pop(struct stub_device *sdev)
{
 unsigned long flags;
 struct stub_priv *priv;

 spin_lock_irqsave(&sdev->priv_lock, flags);

 priv = stub_priv_pop_from_listhead(&sdev->priv_init);
 if (priv)
  goto done;

 priv = stub_priv_pop_from_listhead(&sdev->priv_tx);
 if (priv)
  goto done;

 priv = stub_priv_pop_from_listhead(&sdev->priv_free);

done:
 spin_unlock_irqrestore(&sdev->priv_lock, flags);

 return priv;
}
