
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int dummy(struct net_device *dev,
  struct iw_request_info *a,
  union iwreq_data *wrqu, char *b)
{
 return -EINVAL;
}
