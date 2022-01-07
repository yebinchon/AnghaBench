
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fusb300_ep_info {int epnum; } ;
struct fusb300 {int dummy; } ;


 int fusb300_set_epaddrofs (struct fusb300*,struct fusb300_ep_info) ;
 int fusb300_set_fifo_entry (struct fusb300*,int ) ;
 int fusb300_set_start_entry (struct fusb300*,int ) ;

__attribute__((used)) static void ep_fifo_setting(struct fusb300 *fusb300,
       struct fusb300_ep_info info)
{
 fusb300_set_fifo_entry(fusb300, info.epnum);
 fusb300_set_start_entry(fusb300, info.epnum);
 fusb300_set_epaddrofs(fusb300, info);
}
