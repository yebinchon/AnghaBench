
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int length; } ;


 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int zd1201_get_nick(struct net_device *dev, struct iw_request_info *info,
    struct iw_point *data, char *nick)
{
 strcpy(nick, "zd1201");
 data->flags = 1;
 data->length = strlen(nick);
 return 0;
}
