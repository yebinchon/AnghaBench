
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sbd; } ;
struct TYPE_3__ {struct device core; } ;


 int BUG_ON (int) ;
 TYPE_2__* lpm_priv ;

__attribute__((used)) static struct device *sbd_core(void)
{
 BUG_ON(!lpm_priv || !lpm_priv->sbd);
 return &lpm_priv->sbd->core;
}
