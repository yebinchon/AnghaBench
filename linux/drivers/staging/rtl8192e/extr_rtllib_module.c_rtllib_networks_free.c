
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {int * networks; } ;


 int kfree (int *) ;

__attribute__((used)) static inline void rtllib_networks_free(struct rtllib_device *ieee)
{
 if (!ieee->networks)
  return;
 kfree(ieee->networks);
 ieee->networks = ((void*)0);
}
