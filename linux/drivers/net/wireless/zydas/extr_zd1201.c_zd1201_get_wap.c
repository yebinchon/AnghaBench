
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int updated; int level; } ;
struct TYPE_4__ {TYPE_1__ qual; } ;
struct zd1201 {TYPE_2__ iwstats; } ;
struct sockaddr {unsigned char* sa_data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
typedef int __le16 ;


 int ZD1201_RID_COMMSQUALITY ;
 int ZD1201_RID_CURRENTBSSID ;
 int le16_to_cpu (int ) ;
 struct zd1201* netdev_priv (struct net_device*) ;
 int zd1201_getconfig (struct zd1201*,int ,unsigned char*,int) ;

__attribute__((used)) static int zd1201_get_wap(struct net_device *dev,
    struct iw_request_info *info, struct sockaddr *ap_addr, char *extra)
{
 struct zd1201 *zd = netdev_priv(dev);
 unsigned char buffer[6];

 if (!zd1201_getconfig(zd, ZD1201_RID_COMMSQUALITY, buffer, 6)) {






  zd->iwstats.qual.level = le16_to_cpu(((__le16 *)buffer)[1]);

  zd->iwstats.qual.updated = 2;
 }

 return zd1201_getconfig(zd, ZD1201_RID_CURRENTBSSID, ap_addr->sa_data, 6);
}
