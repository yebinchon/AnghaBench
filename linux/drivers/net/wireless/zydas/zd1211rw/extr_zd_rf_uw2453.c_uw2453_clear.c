
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_rf {int priv; } ;


 int kfree (int ) ;

__attribute__((used)) static void uw2453_clear(struct zd_rf *rf)
{
 kfree(rf->priv);
}
