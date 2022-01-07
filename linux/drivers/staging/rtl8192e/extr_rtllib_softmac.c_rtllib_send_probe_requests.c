
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtllib_device {int softmac_features; scalar_t__ active_scan; } ;


 int IEEE_SOFTMAC_PROBERQ ;
 int rtllib_send_probe (struct rtllib_device*,int ) ;

__attribute__((used)) static void rtllib_send_probe_requests(struct rtllib_device *ieee, u8 is_mesh)
{
 if (ieee->active_scan && (ieee->softmac_features &
     IEEE_SOFTMAC_PROBERQ)) {
  rtllib_send_probe(ieee, 0);
  rtllib_send_probe(ieee, 0);
 }
}
