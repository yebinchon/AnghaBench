
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fusb300_ep_info {int type; int epnum; } ;
struct fusb300_ep {int type; int epnum; } ;



__attribute__((used)) static void fusb300_ep_setting(struct fusb300_ep *ep,
          struct fusb300_ep_info info)
{
 ep->epnum = info.epnum;
 ep->type = info.type;
}
