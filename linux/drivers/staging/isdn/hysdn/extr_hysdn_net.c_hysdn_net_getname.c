
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {char* name; } ;
struct TYPE_3__ {struct net_device* netif; } ;
typedef TYPE_1__ hysdn_card ;



char *
hysdn_net_getname(hysdn_card *card)
{
 struct net_device *dev = card->netif;

 if (!dev)
  return ("-");

 return (dev->name);
}
