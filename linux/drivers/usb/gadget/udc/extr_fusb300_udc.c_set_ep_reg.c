
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fusb300_ep_info {int epnum; scalar_t__ bw_num; scalar_t__ interval; } ;
struct fusb300 {int dummy; } ;


 int fusb300_set_bwnum (struct fusb300*,struct fusb300_ep_info) ;
 int fusb300_set_ep_active (struct fusb300*,int ) ;
 int fusb300_set_epdir (struct fusb300*,struct fusb300_ep_info) ;
 int fusb300_set_epmps (struct fusb300*,struct fusb300_ep_info) ;
 int fusb300_set_eptype (struct fusb300*,struct fusb300_ep_info) ;
 int fusb300_set_interval (struct fusb300*,struct fusb300_ep_info) ;

__attribute__((used)) static void set_ep_reg(struct fusb300 *fusb300,
        struct fusb300_ep_info info)
{
 fusb300_set_eptype(fusb300, info);
 fusb300_set_epdir(fusb300, info);
 fusb300_set_epmps(fusb300, info);

 if (info.interval)
  fusb300_set_interval(fusb300, info);

 if (info.bw_num)
  fusb300_set_bwnum(fusb300, info);

 fusb300_set_ep_active(fusb300, info.epnum);
}
