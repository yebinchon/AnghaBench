
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct rwdt_priv {int dummy; } ;


 int RWTCNT ;
 int rwdt_start (struct watchdog_device*) ;
 int rwdt_write (struct rwdt_priv*,int,int ) ;
 struct rwdt_priv* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int rwdt_restart(struct watchdog_device *wdev, unsigned long action,
   void *data)
{
 struct rwdt_priv *priv = watchdog_get_drvdata(wdev);

 rwdt_start(wdev);
 rwdt_write(priv, 0xffff, RWTCNT);
 return 0;
}
