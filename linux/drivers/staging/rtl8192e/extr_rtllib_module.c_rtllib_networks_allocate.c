
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_network {int dummy; } ;
struct rtllib_device {scalar_t__ networks; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_NETWORK_COUNT ;
 scalar_t__ kcalloc (int ,int,int ) ;

__attribute__((used)) static inline int rtllib_networks_allocate(struct rtllib_device *ieee)
{
 if (ieee->networks)
  return 0;

 ieee->networks = kcalloc(MAX_NETWORK_COUNT,
     sizeof(struct rtllib_network), GFP_KERNEL);
 if (!ieee->networks)
  return -ENOMEM;

 return 0;
}
