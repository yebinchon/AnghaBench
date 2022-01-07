
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int gov; } ;
struct governor_priv {int gov; } ;


 int EINVAL ;
 struct governor_priv* find_governor_by_name (char const*) ;
 int governor_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pretimeout_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int watchdog_pretimeout_governor_set(struct watchdog_device *wdd,
         const char *buf)
{
 struct governor_priv *priv;

 mutex_lock(&governor_lock);

 priv = find_governor_by_name(buf);
 if (!priv) {
  mutex_unlock(&governor_lock);
  return -EINVAL;
 }

 spin_lock_irq(&pretimeout_lock);
 wdd->gov = priv->gov;
 spin_unlock_irq(&pretimeout_lock);

 mutex_unlock(&governor_lock);

 return 0;
}
