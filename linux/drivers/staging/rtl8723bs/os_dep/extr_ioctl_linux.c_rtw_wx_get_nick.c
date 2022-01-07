
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int flags; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int memcpy (char*,char*,int) ;

__attribute__((used)) static int rtw_wx_get_nick(struct net_device *dev,
        struct iw_request_info *info,
        union iwreq_data *wrqu, char *extra)
{




 if (extra) {
  wrqu->data.length = 14;
  wrqu->data.flags = 1;
  memcpy(extra, "<WIFI@REALTEK>", 14);
 }
 return 0;
}
