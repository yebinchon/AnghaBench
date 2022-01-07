
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rp5c01_priv {int dummy; } ;


 int RP5C01_MODE ;
 int RP5C01_MODE_MODE01 ;
 int RP5C01_MODE_TIMER_EN ;
 int rp5c01_write (struct rp5c01_priv*,int,int ) ;

__attribute__((used)) static void rp5c01_unlock(struct rp5c01_priv *priv)
{
 rp5c01_write(priv, RP5C01_MODE_TIMER_EN | RP5C01_MODE_MODE01,
       RP5C01_MODE);
}
