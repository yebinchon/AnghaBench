
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rp5c01_priv {int dummy; } ;


 int RP5C01_MODE ;
 int RP5C01_MODE_MODE00 ;
 int rp5c01_write (struct rp5c01_priv*,int ,int ) ;

__attribute__((used)) static void rp5c01_lock(struct rp5c01_priv *priv)
{
 rp5c01_write(priv, RP5C01_MODE_MODE00, RP5C01_MODE);
}
