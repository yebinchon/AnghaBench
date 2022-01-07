
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdns_dphy {TYPE_1__* ops; } ;
struct TYPE_2__ {unsigned long (* get_wakeup_time_ns ) (struct cdns_dphy*) ;} ;


 unsigned long stub1 (struct cdns_dphy*) ;

__attribute__((used)) static unsigned long cdns_dphy_get_wakeup_time_ns(struct cdns_dphy *dphy)
{
 return dphy->ops->get_wakeup_time_ns(dphy);
}
