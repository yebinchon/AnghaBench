
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 struct net_device* gether_setup_name_default (char*) ;

__attribute__((used)) static inline struct net_device *gether_setup_default(void)
{
 return gether_setup_name_default("usb");
}
