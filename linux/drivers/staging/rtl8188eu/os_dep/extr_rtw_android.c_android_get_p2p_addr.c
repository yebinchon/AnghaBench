
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;


 int ETH_ALEN ;
 int memcpy (char*,int ,int) ;

__attribute__((used)) static int android_get_p2p_addr(struct net_device *net, char *command,
     int total_len)
{

 memcpy(command, net->dev_addr, ETH_ALEN);
 return ETH_ALEN;
}
