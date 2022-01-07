
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static int rtw_android_get_macaddr(struct net_device *net, char *command,
       int total_len)
{
 return snprintf(command, total_len, "Macaddr = %pM",
     net->dev_addr);
}
