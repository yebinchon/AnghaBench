
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251_acx_arp_filter {int enable; int address; int version; } ;
struct wl1251 {int dummy; } ;
typedef int __be32 ;


 int ACX_ARP_IP_FILTER ;
 int ACX_IPV4_ADDR_SIZE ;
 int ACX_IPV4_VERSION ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl1251_acx_arp_filter*) ;
 struct wl1251_acx_arp_filter* kzalloc (int,int ) ;
 int memcpy (int ,int *,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct wl1251_acx_arp_filter*,int) ;
 int wl1251_debug (int ,char*,int) ;
 int wl1251_warning (char*,int) ;

int wl1251_acx_arp_ip_filter(struct wl1251 *wl, bool enable, __be32 address)
{
 struct wl1251_acx_arp_filter *acx;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx arp ip filter, enable: %d", enable);

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx)
  return -ENOMEM;

 acx->version = ACX_IPV4_VERSION;
 acx->enable = enable;

 if (enable)
  memcpy(acx->address, &address, ACX_IPV4_ADDR_SIZE);

 ret = wl1251_cmd_configure(wl, ACX_ARP_IP_FILTER,
       acx, sizeof(*acx));
 if (ret < 0)
  wl1251_warning("failed to set arp ip filter: %d", ret);

 kfree(acx);
 return ret;
}
